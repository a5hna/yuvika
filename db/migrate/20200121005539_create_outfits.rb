class CreateOutfits < ActiveRecord::Migration[6.0]
  def change
    create_table :outfits do |t|
      t.string :images
      t.string :title
      t.decimal :price
      t.text :product_details
      t.string :size
      t.string :style
      t.string :occassion

      t.timestamps
    end
  end
end
