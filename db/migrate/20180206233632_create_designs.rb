class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.string :name
      t.references :brand, foreign_key: true
      t.integer :core_number
      t.integer :accent_number

      t.timestamps
    end
  end
end
