# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  content     :text             default(""), not null
#  notify      :boolean          default(FALSE), not null
#  entity_id   :integer
#  entity_type :string(255)
#  target_id   :integer          not null
#  target_type :string(255)      not null
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
