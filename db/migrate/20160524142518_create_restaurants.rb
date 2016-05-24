class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :content
      t.decimal :lat, precision: 15, scale: 10
      t.decimal :lon, precision: 15, scale: 10

      t.timestamps null: false
    end
  end
end
