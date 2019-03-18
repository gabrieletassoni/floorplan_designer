class CreateFloors < ActiveRecord::Migration[5.2]
  def change
    create_table :floors do |t|
      t.string :name
      t.text :layout

      t.timestamps
    end
    add_index :floors, :name
    add_index :floors, :layout
  end
end
