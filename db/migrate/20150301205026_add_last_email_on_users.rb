class AddLastEmailOnUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_email_id, :string
  end
end
