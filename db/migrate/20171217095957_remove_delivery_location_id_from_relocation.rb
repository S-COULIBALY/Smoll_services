class RemoveDeliveryLocationIdFromRelocation < ActiveRecord::Migration[5.1]
  def change
    remove_column :relocations, :delivery_location_id, :integer
  end
end
