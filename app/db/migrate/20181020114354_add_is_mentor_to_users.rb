class AddIsMentorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_mentor, :integer
  end
end
