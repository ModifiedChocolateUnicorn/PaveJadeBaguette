class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :launch_year
      t.text :brand_desc

      t.timestamps
    end
  end
end
