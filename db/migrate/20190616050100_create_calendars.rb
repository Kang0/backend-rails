class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.integer :years
      t.integer :months
      t.integer :date
      t.belongs_to :challenge

      t.timestamps
    end
  end
end
