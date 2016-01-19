class ChangeTypeToDriverLicense < ActiveRecord::Migration
  def change
    rename_column :driver_licenses, :type, :license_type
  end
end
