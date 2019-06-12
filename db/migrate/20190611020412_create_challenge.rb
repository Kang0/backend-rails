class CreateChallenge < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :name
      t.integer :daysLeft
    end
  end
end
