class RemoveLoadingLocationIdFromRelocations < ActiveRecord::Migration[5.1]
  def change
    remove_column :relocations, :loading_location_id, :string
  end
end
