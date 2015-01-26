class AddSlotsToSections < ActiveRecord::Migration
  def change
    add_column :sections, :vacancy, :integer, default: '-1'
  end
end
