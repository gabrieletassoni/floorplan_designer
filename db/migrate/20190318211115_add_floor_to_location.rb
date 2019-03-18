class AddFloorToLocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :floor, foreign_key: true
  end
end
