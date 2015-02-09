class CreateWebpages < ActiveRecord::Migration
  def change
    create_table :webpages do |t|
      t.string :identifier, null: false
      t.string :name, null: false
      t.string :owner
      t.integer :organization_id, null: false
      t.column :page_type, :integer, default: 0, null: false
      t.text :information, default: '', null: false
      t.boolean :available, default: true, null: false
      t.boolean :secure_protocol, default: false, null: false
      t.boolean :requires_login, default: false, null: false
      t.boolean :should_open_in_browser, default: true, null: false
      t.string :home_url, null: false
      t.string :base_url

      t.timestamps
    end

    add_index :webpages, [:organization_id]
  end
end
