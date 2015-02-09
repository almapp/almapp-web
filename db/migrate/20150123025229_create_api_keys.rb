class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.string :client, null: false, default: ''
      t.string :key, null: false, default: ''
      t.string :contact_name, null: false, default: ''
      t.string :contact_email, null: false, default: ''
      t.boolean :valid_key, null: false, default: true

      t.timestamps
    end
  end
end
