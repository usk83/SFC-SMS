class CreateShiftTimes < ActiveRecord::Migration
  def change
    create_table :shift_times do |t|
      t.date :shift_date
      t.time :shift_time

      t.timestamps null: false
    end
  end
end
