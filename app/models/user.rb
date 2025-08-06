class User < ApplicationRecord
  belongs_to :order, foreign_key: "order_id", primary_key: "order_id", optional: true
end
