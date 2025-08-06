class Book < ApplicationRecord
  has_many :book_orders, dependent: :destroy, foreign_key: :book_id, primary_key: :book_id
  has_many :orders, through: :book_orders
end
