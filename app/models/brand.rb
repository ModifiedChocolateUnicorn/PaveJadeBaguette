class Brand < ApplicationRecord
    # validation
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :launch_year, presence: true 
    validates :launch_year, length: { is: 4 }
    validates :launch_year, numericality: { only_integer: true }
    validates :brand_desc, presence: true
    validates :brand_desc, length: { minimum: 30 }
end
