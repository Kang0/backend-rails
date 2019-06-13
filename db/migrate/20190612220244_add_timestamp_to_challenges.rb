class AddTimestampToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :challenges, default: DateTime.now
    change_column_default :challenges, :created_at, from: DateTime.now, to: nil
    change_column_default :challenges, :updated_at, from: DateTime.now, to: nil
  end
end
