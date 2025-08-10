class Book < ApplicationRecord
  belongs_to :category

  validates :title, presence: :true
  validates :author, presence: :true
  validates :genre, presence: :true
  validates :price, numericality: true
  validates :category_id, presence: :true
end
