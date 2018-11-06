class Address < ApplicationRecord
  enum address_type: [:departure, :arrival]

  validates :street_number, :street_name, :zip_code, :city, :details, :address_type, :complete_address, presence: true
  validates :street_number, numericality: { greater_than_or_equal_to: 1 }
  validates :address_type, inclusion: { in: %w(departure arrival),
    message: "%{value} is not a valid address_type" }
  #validates :complete_address
end
