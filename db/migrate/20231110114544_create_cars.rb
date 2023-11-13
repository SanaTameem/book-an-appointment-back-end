class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.string :model, null: false
      t.integer :finance_fee, null: false
      t.integer :total_amount, null: false
      t.text  :discription
      t.integer :duration, null: false

      t.timestamps
    end
  end
end
