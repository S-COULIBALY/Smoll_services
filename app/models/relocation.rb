class Relocation < ApplicationRecord
    has_many :adresses
    enum relocation_type: [:particular, :compagny, :association]
end
