# == Schema Information
#
# Table name: schedule_items
#
#  id                 :integer          not null, primary key
#  schedule_module_id :integer
#  section_id         :integer          not null
#  class_type         :string
#  place_name         :string
#  campus_name        :string
#

class ScheduleItem < ActiveRecord::Base
  belongs_to :section
  belongs_to :schedule_module
  belongs_to :place

  def semester
    self.section.try(:semester)
  end

  def year
    self.section.try(:year)
  end
end
