class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :code
      t.integer :status
      t.datetime :imported_t
      t.string :url
      t.string :creator
      t.datetime :created_t
      t.datetime :last_modified_t
      t.string :product_name
      t.string :quantity
      t.string :brands
      t.string :categories
      t.string :labels
      t.string :cities
      t.string :purchase_places
      t.string :stores
      t.text :ingredients_text
      t.string :traces
      t.string :serving_size
      t.decimal :serving_quantity
      t.integer :nutriscore_score
      t.string :nutriscore_grade
      t.string :main_category
      t.string :image_url
    end
  end
end
