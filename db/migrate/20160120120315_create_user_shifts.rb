class CreateUserShifts < ActiveRecord::Migration
  def change
    create_table :user_shifts do |t|
      t.integer :user_id
      t.integer :task_shift_id

      t.timestamps null: false
    end
  end
end
