class AddPlaceRefToScheduleItems < ActiveRecord::Migration
  def change
    add_reference :schedule_items, :place, index: true
  end
end
