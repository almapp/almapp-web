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
#  created_at         :datetime
#  updated_at         :datetime
#  place_id           :integer
#  campus_id          :integer
#

class ScheduleItem < ActiveRecord::Base
  validates :section_id, presence: true

  belongs_to :place
  belongs_to :section
  belongs_to :schedule_module
  belongs_to :campus

  alias_method :original_place, :place
  def place
    if original_place.present? && self.updated_at > Time.now - 1.week
      original_place
    else
      loaded_place = campus.place_with_identifier(place_name) if campus.present?
      if loaded_place.present?
        self.place = loaded_place
        self.save!
      end
      loaded_place
    end
  end

  def period
    self.section.period
  end

  def year
    self.section.year
  end

  def organization
    self.schedule_module.organization
  end

  alias_method :original_campus, :campus
  def campus
    if self.campus_id.present?
      original_campus
    else
      loaded_campus = (Campus.search campus_name, limit: 1).first
      self.campus = loaded_campus
      self.save!
      loaded_campus
    end
  end

end
