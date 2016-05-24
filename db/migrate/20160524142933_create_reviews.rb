class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :restaurant_id, null: false
      t.string :author_name
      t.text :content

      t.timestamps null: false
    end
    add_index :reviews, :restaurant_id
  end
end
