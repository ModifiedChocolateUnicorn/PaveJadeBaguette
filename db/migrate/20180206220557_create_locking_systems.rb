class CreateLockingSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :locking_systems do |t|
      t.string :name

      t.timestamps
    end
  end
end
