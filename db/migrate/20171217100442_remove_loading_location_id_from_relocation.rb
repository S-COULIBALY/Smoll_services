class RemoveLoadingLocationIdFromRelocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :relocation, :loading_location_id, :integer
  end
end
