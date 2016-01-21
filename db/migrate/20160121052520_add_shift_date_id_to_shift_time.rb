class AddShiftDateIdToShiftTime < ActiveRecord::Migration
  def change
    add_column :shift_times, :shift_date_id, :integer
  end
end
