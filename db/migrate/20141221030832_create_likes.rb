class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :likeable_id, null: false
      t.string :likeable_type, null: false
    end

    add_index :likes, [:likeable_id, :likeable_type]
  end
end
