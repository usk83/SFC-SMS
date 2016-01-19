class AddTelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tel, :interger
  end
end
