class Order < ApplicationRecord
  belongs_to :user, foreign_key: "user_id", primary_key: "id", optional: true

  has_many :book_orders, dependent: :destroy
  has_many :books, through: :book_orders

  validates :books_ordered, numericality: true
  validates :total_cost, numericality: true
end
