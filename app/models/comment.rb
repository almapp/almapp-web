# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  user_id          :integer          not null
#  commentable_id   :integer          not null
#  commentable_type :string           not null
#  comment          :text             default(""), not null
#  hidden           :boolean          default("false"), not null
#  created_at       :datetime
#  updated_at       :datetime
#

class Comment < ActiveRecord::Base
end
