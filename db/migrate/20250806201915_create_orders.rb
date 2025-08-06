class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false
      t.string :book_id
      t.integer :books_ordered
      t.decimal :total_cost

      t.timestamps
    end
  end
end
