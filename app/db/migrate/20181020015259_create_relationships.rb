class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.integer :id_mentor
      t.integer :id_mentee
      t.integer :b_valid

      t.timestamps
    end
  end
end
