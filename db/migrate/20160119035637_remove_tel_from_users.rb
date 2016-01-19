class RemoveTelFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :tel, :interger
  end
end
