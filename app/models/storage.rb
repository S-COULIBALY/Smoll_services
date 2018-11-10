class Storage < ApplicationRecord
  #has_many :linked_addresses, dependent: :destroy

  #validates :date, :volume, :weight, :carrying_distance, presence: true
  #validates :weight, :volume, numericality: {greater_than_or_equal_to: 5}
  #validates :worker, numericality: { greater_than_or_equal_to: 1 }
end
