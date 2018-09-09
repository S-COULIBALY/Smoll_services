class Adress < ApplicationRecord
  belongs_to :relocation
  has_many :adresses_characteristics
  enum adress_type: [ :departure, :arrival ]
end
