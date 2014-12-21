# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  content     :text             default(""), not null
#  notify      :boolean          default("false"), not null
#  entity_id   :integer
#  entity_type :string
#  target_id   :integer          not null
#  target_type :string           not null
#  place_id    :integer
#  event_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
