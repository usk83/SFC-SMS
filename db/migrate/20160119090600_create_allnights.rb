class CreateAllnights < ActiveRecord::Migration
  def change
    create_table :allnights do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end
