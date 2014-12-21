# == Schema Information
#
# Table name: friendships
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  friend_id  :integer          not null
#  accepted   :boolean          default("false")
#  created_at :datetime
#  updated_at :datetime
#

class Friendship < ActiveRecord::Base
end
