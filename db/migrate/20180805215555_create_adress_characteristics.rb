class CreateAdressCharacteristics < ActiveRecord::Migration[5.1]
  def change
    create_table :adress_characteristics do |t|
      t.string  :residence_type, null: false
      t.integer :floor_number,   null: false
      t.boolean :elevator,       null: false
      t.integer :elevator_capacity,   null: false
      t.boolean :furniture_elevator,  null: false
      t.decimal :carry_distance,      null: false
      t.references :adress, foreign_key: true

      t.timestamps
    end
  end
end
