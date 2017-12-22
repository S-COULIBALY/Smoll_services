class RemoveRelocationIdFromLocation < ActiveRecord::Migration[5.1]
  def change
    remove_reference :locations, :relocation
    #t.remove :delivery_location_id
    #t.remove :loading_location_id
  end
end
