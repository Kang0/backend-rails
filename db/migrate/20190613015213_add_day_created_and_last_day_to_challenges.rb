class AddDayCreatedAndLastDayToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :dayCreated, :string
    add_column :challenges, :lastDay, :string
  end
end
