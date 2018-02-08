class CreateBases < ActiveRecord::Migration[5.1]
  def change
    create_table :bases do |t|
      t.references :material, foreign_key: true
      t.references :locking_system, foreign_key: true
      t.references :brand, foreign_key: true
      t.references :size, foreign_key: true
      t.references :anodizing, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
