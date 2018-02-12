class Gemstone < ApplicationRecord
  # relations
  belongs_to :nature
  belongs_to :brand
  belongs_to :cut

  # validation
  validates :name, presence: true
  validates :name, length: { minimum: 4 }
  validates :name, uniqueness: true
  validates :nature_id, presence: true
  validates :nature_id, numericality: { only_integer: true }
  validates :brand_id, presence: true
  validates :brand_id, numericality: { only_integer: true }
  validates :cut_id, presence: true
  validates :cut_id, numericality: { only_integer: true }
end
