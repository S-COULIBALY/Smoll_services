class CreateRelocations < ActiveRecord::Migration[5.1]
  def change
    create_table :relocations do |t|
      t.integer   :relocation_type, null: false
      t.integer :formula, null: false
      t.datetime :date, null: false
      t.decimal  :volume, null: false
      t.decimal :distance, null: false
      t.integer :worker, null: false
      t.decimal :amount, null: false

      t.timestamps
    end
  end
end
