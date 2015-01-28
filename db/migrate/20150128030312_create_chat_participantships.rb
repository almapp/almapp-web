class CreateChatParticipantships < ActiveRecord::Migration
  def change
    create_table :chat_participantships do |t|
      t.references :chat, index: true
      t.references :user, index: true
      t.boolean :active, default: false, null: false
      t.boolean :muted, default: false, null: false
      t.boolean :banned, default: false, null: false
      t.text :appointment

      t.timestamps
    end
  end
end
