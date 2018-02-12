class Anodizing < ApplicationRecord
    # validation
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: { minimum: 4 }
    validates :voltage, presence: true
    validates :voltage, uniqueness: true
    validates :voltage, numericality: { only_integer: true, greater_than: 10, less_than: 110 }
end
