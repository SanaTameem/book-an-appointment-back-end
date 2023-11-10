class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.string :brand, null: false
      t.integer :reservation_fee, null: false

      t.timestamps
    end
  end
end
