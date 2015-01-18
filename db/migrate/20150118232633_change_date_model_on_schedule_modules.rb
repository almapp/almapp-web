class ChangeDateModelOnScheduleModules < ActiveRecord::Migration
  def change
    remove_column :schedule_modules, :start_time, :string
    remove_column :schedule_modules, :end_time, :string

    add_column :schedule_modules, :start_hour, :integer, null: false, default: 0
    add_column :schedule_modules, :start_minute, :integer, null: false, default: 0
    add_column :schedule_modules, :end_hour, :integer, null: false, default: 0
    add_column :schedule_modules, :end_minute, :integer, null: false, default: 0
  end
end
