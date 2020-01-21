class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.date :start_date
      t.date :end_date
      t.references :order, null: false, foreign_key: true
      t.references :outfit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
