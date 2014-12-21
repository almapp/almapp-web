# == Schema Information
#
# Table name: schedule_modules
#
#  id              :integer          not null, primary key
#  organization_id :integer          not null
#  initials        :string           not null
#  day             :integer          not null
#  block           :integer          not null
#  start_time      :string           not null
#  end_time        :string           not null
#

class ScheduleModule < ActiveRecord::Base
end
