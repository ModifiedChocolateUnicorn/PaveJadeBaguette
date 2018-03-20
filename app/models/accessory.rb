class Accessory < ApplicationRecord
  # relations
  belongs_to :design
  belongs_to :material
  belongs_to :locking_system
  belongs_to :brand
  belongs_to :size
  belongs_to :anodizing
  belongs_to :user

  # validation
  validates :design_id, presence: true
  validates :design_id, numericality: { only_integer: true }
  validates :material_id, presence: true
  validates :material_id, numericality: { only_integer: true }
  validates :locking_system_id, presence: true
  validates :locking_system_id, numericality: { only_integer: true }
  validates :brand_id, presence: true
  validates :brand_id, numericality: { only_integer: true }
  validates :size_id, presence: true
  validates :size_id, numericality: { only_integer: true }
  validates :anodizing_id, presence: true 
  validates :anodizing_id, numericality: { only_integer: true }
  validates :gemstones_ids, presence: true
  validates :gemstones_ids, length: { minimum: 1 }
  validates :user_id, presence: true 
  validates :user_id, numericality: { only_integer: true }
  validates :quantity, presence: true
  validates :quantity, length: { minimum: 1 }
  validates :quantity, numericality: { only_integer: true, minimum: 1 }
end
