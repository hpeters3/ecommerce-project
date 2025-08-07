class Book < ApplicationRecord
  has_many :book_orders, dependent: :destroy
  has_many :orders, through: :book_orders
  belongs_to :category

  validates :title, presence: :true
  validates :author, presence: :true
  validates :genre, presence: :true
  validates :price, numericality: true
  validates :category_id, presence: :true
end
