class BookOrder < ApplicationRecord
  belongs_to :book, foreign_key: true
  belongs_to :order, foreign_key: true
end
