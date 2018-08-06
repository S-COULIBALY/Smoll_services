class Adress < ApplicationRecord
  belongs_to :relocation
  enum adress_type: [ :departure, :arrival ]
end
