class Relocation < ApplicationRecord
  belongs_to :departure, class_name: "Location", foreign_key: "departure_id"
  belongs_to :arrival, class_name: "Location", foreign_key: "arrival_id"
  accepts_nested_attributes_for :departure, allow_destroy: true
  accepts_nested_attributes_for :arrival, allow_destroy: true
end
