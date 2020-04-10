class StoreProduct < ApplicationRecord
  has_and_belongs_to_many :stores
  has_many :products
end