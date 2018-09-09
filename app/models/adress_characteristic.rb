class AdressCharacteristic < ApplicationRecord
  belongs_to :adress
  enum residence_type: [:partment, :house]
end
