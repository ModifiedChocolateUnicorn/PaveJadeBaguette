class LockingSystem < ApplicationRecord
    # validation
    validates :name, presence: true
    validates :name, uniqueness: true
end
