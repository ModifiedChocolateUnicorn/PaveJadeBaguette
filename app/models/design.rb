class Design < ApplicationRecord
  # relations
  belongs_to :brand

  # validation 
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :name, uniqueness: { scope: :brand_id,
    message: "that combination should be unique !" }
  validates :brand_id, presence: true 
  validates :brand_id, numericality: { only_integer: true }
  validates :core_number, presence: true
  validates :core_number, numericality: { only_integer: true }
  validates :accent_number, presence: true
  validates :accent_number, numericality: { only_integer: true }
end
