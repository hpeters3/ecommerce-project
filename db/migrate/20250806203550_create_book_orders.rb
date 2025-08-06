class CreateBookOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :book_orders do |t|
      t.integer :book_id, null: false
      t.integer :order_id, null: false

      t.timestamps
    end

    add_index :book_orders, [ :book_id, :order_id ], unique: true
    add_foreign_key :book_orders, :books, column: :book_id
    add_foreign_key :book_orders, :orders, column: :order_id
  end
end
