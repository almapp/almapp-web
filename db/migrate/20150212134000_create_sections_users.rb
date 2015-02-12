class CreateSectionsUsers < ActiveRecord::Migration
  def change
    drop_table :sections_users

    create_table :sections_users do |t|
      t.references :section, null: false
      t.references :user, null: false
    end

    add_index(:sections_users, [:section_id, :user_id], unique: true)
  end
end
