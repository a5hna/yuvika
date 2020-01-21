class CreateWardrobeItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wardrobe_items do |t|
      t.references :outfit, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.references :wardrobe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
