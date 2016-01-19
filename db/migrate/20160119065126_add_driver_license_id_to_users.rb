class AddDriverLicenseIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :driver_license_id, :integer
  end
end
