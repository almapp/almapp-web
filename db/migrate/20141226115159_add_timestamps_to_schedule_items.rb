class AddTimestampsToScheduleItems < ActiveRecord::Migration
  def change
    add_timestamps :schedule_items
  end
end
