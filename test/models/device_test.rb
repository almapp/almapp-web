# == Schema Information
#
# Table name: devices
#
#  id         :integer          not null, primary key
#  platform   :string(255)
#  token      :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class DeviceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
