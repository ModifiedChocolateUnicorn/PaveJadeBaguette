class Gemstone < ApplicationRecord
  belongs_to :nature
  belongs_to :brand
  belongs_to :cut
end
