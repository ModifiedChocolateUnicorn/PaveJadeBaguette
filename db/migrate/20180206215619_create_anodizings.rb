class CreateAnodizings < ActiveRecord::Migration[5.1]
  def change
    create_table :anodizings do |t|
      t.string :name
      t.integer :voltage

      t.timestamps
    end
  end
end
