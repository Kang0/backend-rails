class AddClickedAndTimeClickedAndTimeClickToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :clicked, :boolean
    add_column :challenges, :timeClicked, :string
    add_column :challenges, :timeToClick, :string
  end
end
