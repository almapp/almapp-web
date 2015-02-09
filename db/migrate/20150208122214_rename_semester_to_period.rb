class RenameSemesterToPeriod < ActiveRecord::Migration
  def change
    rename_column :sections, :semester, :period
  end
end
