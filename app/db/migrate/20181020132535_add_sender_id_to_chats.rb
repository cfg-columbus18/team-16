class AddSenderIdToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :sender_id, :Integer
  end
end
