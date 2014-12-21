# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  identifier  :string           not null
#  slug        :string           not null
#  name        :string
#  service     :boolean          default("false"), not null
#  campus_id   :integer
#  area_id     :integer          not null
#  area_type   :string           not null
#  description :text
#  zoom        :float            default("0.0")
#  angle       :float            default("0.0")
#  tilt        :float            default("0.0")
#  latitude    :float            default("0.0")
#  longitude   :float            default("0.0")
#  floor       :string
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
