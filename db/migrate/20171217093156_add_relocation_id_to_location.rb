class AddRelocationIdToLocation < ActiveRecord::Migration[5.1]
  def change
    add_reference :locations, :relocation, foreign_key: true
  end
end
