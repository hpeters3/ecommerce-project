class Order < ApplicationRecord
  belongs_to :user, foreign_key: "user_id", primary_key: "id", optional: true

  validates :books_ordered, numericality: true
  validates :total_cost, numericality: true
end
