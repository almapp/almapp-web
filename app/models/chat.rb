# == Schema Information
#
# Table name: chats
#
#  id               :integer          not null, primary key
#  conversable_id   :integer
#  conversable_type :string(255)
#  title            :string(255)      default("")
#  available        :boolean          default(TRUE), not null
#  created_at       :datetime
#  updated_at       :datetime
#

class Chat < ActiveRecord::Base
  validates :conversable_id, presence: true
  validates :conversable_type, presence: true

  belongs_to :conversable, polymorphic: true

  has_many :chat_participantships
  has_many :users, through: :chat_participantships
  has_many :chat_messages, through: :chat_participantships
end
