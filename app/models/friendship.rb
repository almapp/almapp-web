# == Schema Information
#
# Table name: friendships
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  friend_id  :integer          not null
#  accepted   :boolean          default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#

class Friendship < ActiveRecord::Base
  validates :user, presence: true
  validates :friend, presence: true

  belongs_to :user
  belongs_to :friend, class_name: 'User'

  def self.accept(user1, user2)
    friendship = Friendship.find_by_user_id_and_friend_id(user1, user2)
    friendship = Friendship.find_by_user_id_and_friend_id(user2, user1) unless friendship.present?
    if friendship.present?
      friendship.accepted = true
      friendship.save!
    end
  end
end
