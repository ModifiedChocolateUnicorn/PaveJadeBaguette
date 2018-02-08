class CreateGemstones < ActiveRecord::Migration[5.1]
  def change
    create_table :gemstones do |t|
      t.string :name
      t.references :nature, foreign_key: true
      t.references :brand, foreign_key: true
      t.references :cut, foreign_key: true

      t.timestamps
    end
  end
end
