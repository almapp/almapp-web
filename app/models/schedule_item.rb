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
end
