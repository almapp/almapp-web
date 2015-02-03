# == Schema Information
#
# Table name: chat_messages
#
#  id                      :integer          not null, primary key
#  chat_participantship_id :integer
#  content                 :text             default(""), not null
#  flagged                 :boolean          default(FALSE), not null
#  hidden                  :boolean          default(FALSE), not null
#  created_at              :datetime
#  updated_at              :datetime
#

require 'test_helper'

class ChatMessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
