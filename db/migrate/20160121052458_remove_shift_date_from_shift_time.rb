class RemoveShiftDateFromShiftTime < ActiveRecord::Migration
  def change
    remove_column :shift_times, :shift_date, :date
  end
end
