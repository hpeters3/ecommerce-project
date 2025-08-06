class Order < ApplicationRecord
  belongs_to :user, foreign_key: "user_id", primary_key: "user_id", optional: true

  has_many :book_orders, dependent: :destroy, foreign_key: :order_id, primary_key: :order_id
  has_many :books, through: :book_orders
end
