class RemoveImagesFromOutfits < ActiveRecord::Migration[6.0]
  def change
    remove_column :outfits, :images, :string
  end
end
