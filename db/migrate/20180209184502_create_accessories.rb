class CreateAccessories < ActiveRecord::Migration[5.1]
  def change
    create_table :accessories do |t|
      t.references :design, foreign_key: true
      t.references :material, foreign_key: true
      t.references :locking_system, foreign_key: true
      t.references :brand, foreign_key: true
      t.string :accessory_size
      t.references :anodizing, foreign_key: true
      t.string :gemstones_ids
      t.references :user, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
