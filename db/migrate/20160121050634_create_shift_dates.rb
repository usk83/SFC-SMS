class CreateShiftDates < ActiveRecord::Migration
  def change
    create_table :shift_dates do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end
