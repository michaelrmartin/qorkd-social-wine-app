class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :blend
      t.decimal :price, precision: 5, scale: 2
      t.integer :origin_id
      t.string :style
      t.string :photo_url
      t.boolean :vegan
      t.boolean :sparkling
      t.text :description
      t.string :color
      t.string :sweet
      t.boolean :organic
      
      t.timestamps
    end
  end
end
