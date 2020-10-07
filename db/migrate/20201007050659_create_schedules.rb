class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :year
      t.integer :month
      t.integer :day
      t.string :place

      t.timestamps
    end
  end
end
