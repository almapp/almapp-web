class AddCampusAndPlaceCacheToScheduleItem < ActiveRecord::Migration
  def change
    add_reference :schedule_items, :place, index: true
    add_reference :schedule_items, :campus, index: true
  end
end
