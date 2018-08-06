class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.string :street_name
      t.integer :postal_code
      t.string :city
      t.text :details
      t.integer :adress_type
      t.decimal :longitude
      t.decimal :lattitude
      t.string :complete_adress
      t.references :relocation, foreign_key: true

      t.timestamps
    end
  end
end
