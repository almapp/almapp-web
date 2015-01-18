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

require 'test_helper'

class ScheduleModuleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
