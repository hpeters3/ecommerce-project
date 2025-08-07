class User < ApplicationRecord
  belongs_to :order, foreign_key: "order_id", primary_key: "id", optional: true

  validates :username, presence: :true
  validates :password, presence: :true
  validates :email, presence: :true
  validates :address, presence: :true
  validates :province, presence: :true
end
