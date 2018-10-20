class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :id_relationship
      t.integer :id_sender
      t.string :message

      t.timestamps
    end
  end
end
