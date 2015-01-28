# == Schema Information
#
# Table name: chat_participantships
#
#  id          :integer          not null, primary key
#  chat_id     :integer
#  user_id     :integer
#  active      :boolean          default(FALSE), not null
#  muted       :boolean          default(FALSE), not null
#  banned      :boolean          default(FALSE), not null
#  appointment :text
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class ChatParticipantshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
