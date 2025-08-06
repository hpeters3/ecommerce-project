class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.string :customer_id
      t.string :book_id
      t.integer :books_ordered
      t.decimal :total_cost

      t.timestamps
    end
  end
end
