class AddAttachmentToWebpages < ActiveRecord::Migration
  def self.up
    add_attachment :webpages, :icon
    add_attachment :webpages, :background
  end

  def self.down
    remove_attachment :webpages, :icon
    remove_attachment :webpages, :background
  end
end
