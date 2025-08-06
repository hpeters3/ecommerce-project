class CreateBookOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :book_orders do |t|
      t.string :order_id
      t.string :book_id

      t.timestamps
    end
  end
end
