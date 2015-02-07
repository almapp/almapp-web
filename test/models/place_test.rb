# == Schema Information
#
# Table name: places
#
#  id             :integer          not null, primary key
#  identifier     :string(255)      not null
#  name           :string(255)
#  area_id        :integer          not null
#  area_type      :string(255)      not null
#  information    :text             default("")
#  zoom           :float            default(0.0)
#  angle          :float            default(0.0)
#  tilt           :float            default(0.0)
#  latitude       :float            default(0.0)
#  longitude      :float            default(0.0)
#  floor          :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  comments_count :integer          default(0), not null
#  likes_count    :integer          default(0), not null
#  dislikes_count :integer          default(0), not null
#

require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
