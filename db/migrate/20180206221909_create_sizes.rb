class CreateSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :sizes do |t|
      t.integer :thickness

      t.timestamps
    end
  end
end
