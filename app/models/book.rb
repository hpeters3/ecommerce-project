class Book < ApplicationRecord
  has_many :book_orders, dependent: :destroy
  has_many :orders, through: :book_orders

  validates :title, presence: :true
  validates :author, presence: :true
  validates :genre, presence: :true
  validates :price, numericality: true
end
