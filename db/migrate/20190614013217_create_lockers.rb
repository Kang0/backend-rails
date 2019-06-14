class CreateLockers < ActiveRecord::Migration[5.2]
  def change
    create_table :lockers do |t|
      t.integer :currency
      t.belongs_to :user

      t.timestamps
    end
  end
end
