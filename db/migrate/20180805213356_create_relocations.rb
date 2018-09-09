class CreateRelocations < ActiveRecord::Migration[5.1]
  def change
    create_table :relocations do |t|
      t.string   :relocation_type, null: false
      t.datetime :date, null: false
      t.decimal  :volume, null: false
      t.string   :formula, null: false

      t.timestamps
    end
  end
end
