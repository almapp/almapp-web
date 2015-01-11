# == Schema Information
#
# Table name: buildings
#
#  id           :integer          not null, primary key
#  abbreviation :string(255)
#  short_name   :string(255)
#  name         :string(255)
#  campus_id    :integer          not null
#  address      :string(255)
#  phone        :string(255)
#  email        :string(255)
#  url          :string(255)
#  facebook     :string(255)
#  twitter      :string(255)
#  information  :text             default("")
#  place_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class BuildingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
