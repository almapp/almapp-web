# == Schema Information
#
# Table name: email_tokens
#
#  id            :integer          not null, primary key
#  provider      :string(255)
#  access_token  :string(255)
#  refresh_token :string(255)
#  expires_at    :datetime
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class EmailTokenTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
