class CreateFloorLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :floor_locations do |t|
      t.references :floor, foreign_key: true
      t.references :location, foreign_key: true
      t.string :rectid

      t.timestamps
    end
    add_index :floor_locations, :rectid
  end
end
