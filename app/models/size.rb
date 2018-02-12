class Size < ApplicationRecord
    validates :thickness, presence: true
    validates :thickness, numericality: { only_integer: true }
end
