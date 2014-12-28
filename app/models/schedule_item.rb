# == Schema Information
#
# Table name: schedule_items
#
#  id                 :integer          not null, primary key
#  schedule_module_id :integer
#  section_id         :integer          not null
#  class_type         :string(255)
#  place_name         :string(255)
#  campus_name        :string(255)
#  place_id           :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class ScheduleItem < ActiveRecord::Base
  validates :section_id, presence: true

  belongs_to :section
  belongs_to :schedule_module
  belongs_to :place
  belongs_to :campus

  def semester
    self.section.semester
  end

  def year
    self.section.year
  end

  def organization
    self.schedule_module.organization
  end

  def campus
    organization.campuses.find_by_short_name(campus_name)
  end
end
