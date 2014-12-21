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

require 'test_helper'

class ScheduleItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
