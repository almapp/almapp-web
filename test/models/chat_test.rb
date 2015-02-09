# == Schema Information
#
# Table name: chats
#
#  id               :integer          not null, primary key
#  conversable_id   :integer
#  conversable_type :string(255)
#  title            :string(255)      not null
#  available        :boolean          default(TRUE), not null
#  created_at       :datetime
#  updated_at       :datetime
#

require 'test_helper'

class ChatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
