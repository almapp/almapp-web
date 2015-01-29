class CreateChats < ActiveRecord::Migration
  def change
    # rails g model Chat conversable:references{polymorphic} title:string available:boolean

    create_table :chats do |t|
      t.references :conversable, polymorphic: true, index: true
      t.string :title, null: false, index: true
      t.boolean :available, default: true, null: false

      t.timestamps
    end
  end
end
