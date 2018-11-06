class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street_number, null: false
      t.string :street_name, null: false
      t.integer :zip_code, null: false
      t.string :city, null: false
      t.text :details
      t.integer :address_type, null: false
      t.decimal :longitude, null: false
      t.decimal :lattitude, null: false
      t.string :complete_address, null: false

      t.timestamps
    end
  end
end
