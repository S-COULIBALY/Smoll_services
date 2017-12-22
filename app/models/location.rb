class Location < ApplicationRecord
  belongs_to :relocation

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


end
