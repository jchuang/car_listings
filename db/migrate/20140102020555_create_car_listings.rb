class CreateCarListings < ActiveRecord::Migration
  def change
    create_table :car_listings do |t|
      t.string :color, null: false
      t.integer :year, null: false
      t.integer :mileage, null: false
      t.string :description

      t.timestamps
    end
  end
end
