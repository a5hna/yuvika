class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :date
      t.decimal :total_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
