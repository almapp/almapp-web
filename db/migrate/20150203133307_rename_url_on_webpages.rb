class RenameUrlOnWebpages < ActiveRecord::Migration
  def change
    rename_column :webpages, :base_url, :login_url
  end
end
