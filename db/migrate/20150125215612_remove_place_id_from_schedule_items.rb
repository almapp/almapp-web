class RemovePlaceIdFromScheduleItems < ActiveRecord::Migration
  def change
    remove_reference :schedule_items, :place, index: true
  end
end
