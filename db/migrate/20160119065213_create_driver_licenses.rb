class CreateDriverLicenses < ActiveRecord::Migration
  def change
    create_table :driver_licenses do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
