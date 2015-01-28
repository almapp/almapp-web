# == Schema Information
#
# Table name: chat_participantships
#
#  id          :integer          not null, primary key
#  chat_id     :integer
#  user_id     :integer
#  muted       :boolean          default(FALSE), not null
#  banned      :boolean          default(FALSE), not null
#  appointment :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class ChatParticipantship < ActiveRecord::Base
  validates :chat_id, presence: true
  validates :user_id, presence: true

  belongs_to :chat
  belongs_to :user
end
