class Gemstone < ApplicationRecord
  # relations
  belongs_to :nature
  belongs_to :brand
  belongs_to :cut
end
