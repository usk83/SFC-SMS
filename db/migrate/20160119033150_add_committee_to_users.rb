class AddCommitteeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :committee, :integer
  end
end
