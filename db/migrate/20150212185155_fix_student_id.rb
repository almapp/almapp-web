class FixStudentId < ActiveRecord::Migration
  def change
    add_column :enrolled_careers, :student_id, :string
    remove_column :users, :student_id, :string
  end
end
