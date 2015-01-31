class AddDeviseToUsers < ActiveRecord::Migration
  def self.up
    drop_table :users

    create_table "users", force: true do |t|
      t.string   "name"
      t.string   "username",                               null: false
      t.string   "student_id"
      t.integer  "organization_id",                        null: false
      t.boolean  "admin",                  default: false
      t.boolean  "male",                   default: true
      t.string   "country"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.boolean  "findeable",              default: true,  null: false
      t.string   "email",                  default: "",    null: false
      t.string   "encrypted_password",     default: "",    null: false
      t.string   "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",          default: 0,     null: false
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.inet     "current_sign_in_ip"
      t.inet     "last_sign_in_ip"
    end

    add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
    add_index "users", ["organization_id"], name: "index_users_on_organization_id", using: :btree
    add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end
end
