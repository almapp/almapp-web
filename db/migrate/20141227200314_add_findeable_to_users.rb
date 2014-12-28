class AddFindeableToUsers < ActiveRecord::Migration
  def change
    add_column :users, :findeable, :boolean, default: true, null: false
  end
end
