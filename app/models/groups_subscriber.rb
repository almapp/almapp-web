# == Schema Information
#
# Table name: groups_subscribers
#
#  id            :integer          not null, primary key
#  user_id       :integer          not null
#  group_id      :integer          not null
#  visible_mail  :boolean          default(TRUE)
#  notifications :boolean          default(TRUE)
#  created_at    :datetime
#  updated_at    :datetime
#

class GroupsSubscriber < ActiveRecord::Base
  validates :user_id, presence: true
  validates :group_id, presence: true

  belongs_to :user
  belongs_to :group
end
