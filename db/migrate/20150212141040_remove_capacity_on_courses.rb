class RemoveCapacityOnCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :enrolled, :integer
    remove_column :courses, :capacity, :integer
  end
end

