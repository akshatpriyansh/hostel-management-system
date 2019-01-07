class CreateHostellers < ActiveRecord::Migration
  def change
    create_table :hostellers do |t|
      t.string :hosteller_name
      t.string :hosteller_number
      t.string :hosteller_address
      t.string :father_name
      t.string :father_occupation
      t.string :father_number
      t.string :mother_name
      t.string :mother_number
      t.string :block
      t.integer :room_number
      t.integer :building_id
      t.timestamps null: false
    end
  end
end