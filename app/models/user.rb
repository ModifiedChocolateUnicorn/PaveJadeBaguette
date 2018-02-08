class User < ApplicationRecord
    has_many :bases
    has_many :ends
    has_many :jewels
end
