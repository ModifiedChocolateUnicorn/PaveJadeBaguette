class Nature < ApplicationRecord
    # validation
    validates :name, presence: true
    validates :name, uniqueness: true
end
