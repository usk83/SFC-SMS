class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :year, :integer
    add_column :users, :line, :string
    add_column :users, :tel, :string
  end
end
