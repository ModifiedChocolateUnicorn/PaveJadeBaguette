class Cut < ApplicationRecord
    # validation
    validates :name, presence: true
    validates :name, length: { minimum: 3 }
    validates :name, uniqueness: true
end
