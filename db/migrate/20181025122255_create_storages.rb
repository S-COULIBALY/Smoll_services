  class CreateStorages < ActiveRecord::Migration[5.1]
  def change
    create_table :storages do |t|
      t.date :date, null: false
      t.decimal :weight, null: false
      t.decimal :volume, null: false
      t.decimal :distance, null: false
      t.decimal :carrying_distance, null: false
      t.integer :worker, null: false
      t.decimal :amount, null: false

      t.timestamps
    end
  end
end
