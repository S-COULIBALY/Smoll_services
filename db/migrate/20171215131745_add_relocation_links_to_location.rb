class AddRelocationLinksToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :relocations, :delivery_location_id, :integer
    add_column :relocations, :loading_location_id, :integer
  end
end
