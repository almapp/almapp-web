# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  user_id       :integer          not null
#  valuation     :integer          default(1), not null
#  likeable_id   :integer          not null
#  likeable_type :string(255)      not null
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
