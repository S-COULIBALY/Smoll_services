class Relocation < ApplicationRecord
    #has_many :linked_addresses, dependent: :destroy
    enum relocation_type: [:particular, :compagny, :association]
    enum formula: [:standard, :economic, :comfort, :luxury]

    validates :relocation_type, :formula, :date, :volume, presence: true
    validates :volume, numericality: { greater_than_or_equal_to: 5 }
    validates :relocation_type, inclusion: { in: %w(particular compagny association),
    message: "%{value} is not a valid relocation_type" }
    validates :formula, inclusion: { in: %w(standard economic comfort luxury),
    message: "%{value} is not a valid formula" }

end
