class CreateActiveTimes < ActiveRecord::Migration
  def change
    create_table :active_times do |t|
      t.integer :user_id
      t.integer :shift_time_id

      t.timestamps null: false
    end
  end
end
