# == Schema Information
#
# Table name: groups_subscribers
#
#  id            :integer          not null, primary key
#  user_id       :integer          not null
#  group_id      :integer          not null
#  visible_mail  :boolean          default("true")
#  notifications :boolean          default("true")
#  created_at    :datetime
#  updated_at    :datetime
#

class GroupsSubscriber < ActiveRecord::Base
end
