class CreateEmailTokens < ActiveRecord::Migration
  def change
    create_table :email_tokens do |t|
      t.string :provider, null: false
      t.string :access_token
      t.string :refresh_token, null: false
      t.string :code
      t.datetime :expires_at, null: false
      t.references :user, index: true

      t.timestamps
    end
  end
end
