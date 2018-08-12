class CreateAdressCharacteristics < ActiveRecord::Migration[5.1]
  def change
    create_table :adress_characteristics do |t|
      t.integer :floor_number
      t.boolean :elevator
      t.integer :elevator_capacity
      t.boolean :furniture_elevator
      t.integer :furniture_elevator_capacity
<<<<<<< HEAD
      t.string :r
=======
>>>>>>> 17081989f85f6a05d59bc35c3a067b7cbeb529bd
      t.decimal :carry_distance
      t.references :adress, foreign_key: true

      t.timestamps
    end
  end
end
