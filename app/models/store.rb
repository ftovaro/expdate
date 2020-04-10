class Store < ApplicationRecord
  has_and_belongs_to_many :store_products
end