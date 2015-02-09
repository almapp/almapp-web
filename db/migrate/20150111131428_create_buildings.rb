class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :abbreviation
      t.string :short_name
      t.string :name
      t.references :campus, index: true, null: false
      t.string :address
      t.string :phone
      t.string :email
      t.string :url
      t.string :facebook
      t.string :twitter
      t.text :information, default: ''
      t.references :place, index: true

      t.timestamps
    end
  end
end
