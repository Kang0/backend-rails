class AddNoteAndVideoToCalendars < ActiveRecord::Migration[5.2]
  def change
    add_column :calendars, :note, :string, :default => ""
    add_column :calendars, :video, :string, :default => ""
  end
end
