class User < ApplicationRecord
    # relations
    has_many :bases
    has_many :ends
    has_many :jewels

    # validation
    validates :name, presence: true
    validates :name, length: { in: 5..15 }
    validates :name, uniqueness: true
    validates :pwd, presence: true
    validates :pwd, length: { in: 10..25 }
    validates :email, presence: true
    validates :email, uniqueness: true
end
