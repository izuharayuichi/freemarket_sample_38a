class ProductSize < ApplicationRecord
  belongs_to :product
  belongs_to :size

  validates :product_id, presence: true
  validates :size_id, presence: true
end
