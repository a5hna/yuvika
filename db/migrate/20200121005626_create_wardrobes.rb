class CreateWardrobes < ActiveRecord::Migration[6.0]
  def change
    create_table :wardrobes do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
