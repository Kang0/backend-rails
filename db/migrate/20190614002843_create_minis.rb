class CreateMinis < ActiveRecord::Migration[5.2]
  def change
    create_table :minis do |t|
      t.integer :level
      t.string :speciality
      t.string :born
      t.boolean :graduated
      t.integer :age
      t.integer :challenge_id

      t.timestamps
    end
  end
end
