class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.string :street_number, null: false
      t.string :street_name, null: false
      t.integer :postal_code, null: false
      t.string :city, null: false
      t.text :details, null: false
      t.integer :adress_type, null: false, default: 0
      t.decimal :longitude, null: false
      t.decimal :lattitude, null: false
      t.string :complete_adress, null: false
      t.references :relocation, foreign_key: true

      t.timestamps
    end
  end
end
