class AddCommitteeIdToStations < ActiveRecord::Migration
  def change
    add_column :stations, :committee_id, :integer
  end
end
