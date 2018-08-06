class CreateAdressCharacteristics < ActiveRecord::Migration[5.1]
  def change
    create_table :adress_characteristics do |t|
      t.integer :floor_number
      t.boolean :elevator
      t.integer :elevator_capacity
      t.boolean :furniture_elevator
      t.integer :furniture_elevator_capacity
      t.string :r
      t.decimal :carry_distance
      t.references :adress, foreign_key: true

      t.timestamps
    end
  end
end
