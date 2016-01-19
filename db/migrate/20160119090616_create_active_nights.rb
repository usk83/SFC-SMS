class CreateActiveNights < ActiveRecord::Migration
  def change
    create_table :active_nights do |t|
      t.integer :user_id
      t.integer :allnight_id

      t.timestamps null: false
    end
  end
end
