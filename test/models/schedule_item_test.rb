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
#

require 'test_helper'

class ScheduleItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
