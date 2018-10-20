class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.text :message
      t.string :username
      t.string :mentor_id
      t.string :mentee_id

      t.timestamps
    end
  end
end
