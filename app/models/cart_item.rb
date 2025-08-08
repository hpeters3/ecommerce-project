class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :book

  validates :quantity, numerciality: :true
end
