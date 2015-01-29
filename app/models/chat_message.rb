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

class ChatMessage < ActiveRecord::Base
  validates :chat_participantship_id, presence: true
  validates :content, presence: :true, length: {minimum: 1}, allow_blank: false

  belongs_to :chat_participantship
  has_one :user, through: :chat_participantships
  has_one :chat, through: :chat_participantships
end
