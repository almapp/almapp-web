# == Schema Information
#
# Table name: schedule_modules
#
#  id              :integer          not null, primary key
#  organization_id :integer          not null
#  initials        :string(255)      not null
#  day             :integer          not null
#  block           :integer          not null
#  start_hour      :integer          default(0), not null
#  start_minute    :integer          default(0), not null
#  end_hour        :integer          default(0), not null
#  end_minute      :integer          default(0), not null
#

class ScheduleModule < ActiveRecord::Base
  validates :initials, presence: true
  validates :day, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 7 }
  validates :block, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :start_hour, presence: true
  validates :start_minute, presence: true
  validates :end_hour, presence: true
  validates :end_minute, presence: true

  belongs_to :organization

  has_many :schedule_items
  has_many :sections, through: :schedule_items
  has_many :places, through: :schedule_items

  def self.day_for_char(c)
    case c
      when 'L'
        1
      when 'M'
        2
      when 'W'
        3
      when 'J'
        4
      when 'V'
        5
      when 'S'
        6
      else
        7
    end
  end

  def self.modules_for_loader(organization, input)
    array = Array.new
    input.gsub(' ', '').split(';').each do |statement|
      begin
        days = statement.split(':')[0]
        blocks = statement.split(':')[1]
        days.split('-').each do |d|
          blocks.split(',').each do |b|
            if b.include? 'a'
              for t in b.split('a')[0]..b.split('a')[1] do
                result = organization.schedule_modules.find_by_day_and_block(day_for_char(d), t)
                array.push(result)
              end
            else
              result = organization.schedule_modules.find_by_day_and_block(day_for_char(d), b)
              array.push(result)
            end
          end
        end
      rescue Exception => msg
        path = "log.txt"
        content = "Problem with #{input}: #{msg}"
        File.open(path, "w+") do |f|
          f.write(content)
        end
      end

    end
    return array
    #array.each do |a|
    #  puts a.initials
    #end
  end

end
