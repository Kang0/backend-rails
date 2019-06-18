class AddClickedToCalendars < ActiveRecord::Migration[5.2]
  def change
    add_column :calendars, :clicked, :boolean, :default => false
  end
end
