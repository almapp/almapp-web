class SetLikeDefaultValue < ActiveRecord::Migration
  def change
    change_column_default(:likes, :valuation, 1)
  end
end
