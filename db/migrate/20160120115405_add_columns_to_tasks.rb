class AddColumnsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :detailed_name, :string
    add_column :tasks, :comment, :string
  end
end
