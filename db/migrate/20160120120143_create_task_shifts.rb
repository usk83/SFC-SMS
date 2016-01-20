class CreateTaskShifts < ActiveRecord::Migration
  def change
    create_table :task_shifts do |t|
      t.integer :task_id
      t.integer :shift_time_id
      t.integer :min_num
      t.integer :max_num

      t.timestamps null: false
    end
  end
end
