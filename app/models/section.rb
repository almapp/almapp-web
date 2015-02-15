# == Schema Information
#
# Table name: sections
#
#  id             :integer          not null, primary key
#  course_id      :integer          not null
#  number         :integer          not null
#  period         :integer          not null
#  year           :integer          not null
#  created_at     :datetime
#  updated_at     :datetime
#  vacancy        :integer          default(-1)
#  comments_count :integer          default(0), not null
#  likes_count    :integer          default(0), not null
#  dislikes_count :integer          default(0), not null
#

class Section < ActiveRecord::Base
  include Commentable
  include Likeable
  include PostTarget
  include PostPublisher
  include EventPublisher

  validates :course_id, presence: true
  validates :period, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :year, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates_uniqueness_of :course_id, scope: [:number, :year, :period]

  belongs_to :course

  has_many :schedule_items, dependent: :destroy
  has_many :schedule_modules, through: :schedule_items
  has_many :places, through: :schedule_items

  has_many :sections_users, dependent: :destroy
  has_many :section_students,  -> { uniq }, through: :sections_users, source: :user, class_name: 'User' do
    def <<(new_item)
      super( Array(new_item) - proxy_association.owner.section_students )
    end
  end

  has_and_belongs_to_many :teachers

  has_many :assistantships, dependent: :destroy
  has_many :assistants, through: :assistantships, source: :user, class_name: 'User'

  scope :period, lambda { |year, period| where(year: year, period: period) }

  #def self.period(course, year, period)
  #  where(course: course, year: year, period: period)
  #end

  def self.available_periods_for(course)
    where(course: course).pluck(:year, :period).uniq
  end

  def identifier
    "#{self.course.initials}-#{self.number}"
  end

  def self.find_by_identifier(identifier = '', year = current_year, period = current_period)
    array = identifier.split('-')
    if array.size == 2
      find_by_name_and_number(array[0], array[1], year, period)
    else
      find_by_name_and_number(identifier, 1, year, period)
    end
  end

  def self.find_by_name_and_number(initials, number, year = current_year, period = current_period)
    period(year, period).where(number: number).joins(:course).merge(Course.where(initials: initials)).first
  end

end
