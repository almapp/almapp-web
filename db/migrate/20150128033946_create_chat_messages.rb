class CreateChatMessages < ActiveRecord::Migration
  def change
    create_table :chat_messages do |t|
      t.references :chat_participantship, index: true
      t.text :content, default: '', null: false
      t.boolean :flagged, default: false, null: false
      t.boolean :hidden, default: false, null: false

      t.timestamps
    end
  end
end
