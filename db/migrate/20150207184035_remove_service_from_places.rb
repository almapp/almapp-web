class RemoveServiceFromPlaces < ActiveRecord::Migration
  def change
    remove_column :places, :service, :boolean
  end
end
