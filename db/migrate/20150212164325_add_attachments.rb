class AddAttachments < ActiveRecord::Migration
  def self.up
    add_attachment :users, :avatar
    add_attachment :teachers, :avatar
  end

  def self.down
    remove_attachment :users, :avatar
    remove_attachment :teachers, :avatar
  end
end
