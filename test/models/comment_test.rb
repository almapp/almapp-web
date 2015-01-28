# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  user_id          :integer          not null
#  commentable_id   :integer          not null
#  commentable_type :string(255)      not null
#  comment          :text             default(""), not null
#  hidden           :boolean          default(FALSE), not null
#  created_at       :datetime
#  updated_at       :datetime
#  anonymous        :boolean          default(FALSE), not null
#  comments_count   :integer          default(0), not null
#  likes_count      :integer          default(0), not null
#  dislikes_count   :integer          default(0), not null
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
