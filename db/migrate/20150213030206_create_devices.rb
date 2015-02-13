class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :platform
      t.string :token
      t.references :user, index: true

      t.timestamps
    end
  end
end
