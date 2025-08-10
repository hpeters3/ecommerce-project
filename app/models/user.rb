class User < ApplicationRecord
  belongs_to :order, foreign_key: "order_id", primary_key: "id", optional: true

  validates :name, presence: :true
  validates :province, presence: :true
end
