class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :location
      t.integer :max_strength
      t.timestamps null: false
    end
  end
end
