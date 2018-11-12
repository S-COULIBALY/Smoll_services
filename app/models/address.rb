class Address < ApplicationRecord
  enum address_type: [:departure, :arrival]

  validates :address_type, :complete_address, :carrying_distance, :floor_number, :elevator, :elevator_capacity, :furniture_elevator, presence: true
  validates :street_number, numericality: { greater_than_or_equal_to: 1 }
  validates :address_type, inclusion: { in: %w(departure arrival),
    message: "%{value} is not a valid address_type" }
  #validates :complete_address
end
