  class CreateStorages < ActiveRecord::Migration[5.1]
  def change
    create_table :storages do |t|
      t.date :date, null: false
      t.decimal :weight, null: false
      t.decimal :volume, null: false
      #t.decimal :distance
      #t.integer :worker
      #t.decimal :amount

      t.timestamps
    end
  end
end
