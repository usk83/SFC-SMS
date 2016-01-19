class CreateExperienceTasks < ActiveRecord::Migration
  def change
    create_table :experience_tasks do |t|
      t.integer :user_id
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
