class AddDepartureAndArrivalLogicToRelocation < ActiveRecord::Migration[5.1]
  def change
     add_reference :relocations, :departure, foreign_key: {to_table: :locations}
     add_reference :relocations, :arrival, foreign_key: {to_table: :locations}
  end
end
