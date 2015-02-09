class AddAttributesToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :address, :string
    add_column :organizations, :phone, :string
  end
end
