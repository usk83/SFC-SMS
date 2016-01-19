class CreateResponsibleTasks < ActiveRecord::Migration
  def change
    create_table :responsible_tasks do |t|
      t.integer :user_id
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
