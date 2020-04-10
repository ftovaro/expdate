class CreateStore < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.timestamps
    end

    create_table :store_products_stores, id: false do |t|
      t.belongs_to :store
      t.belongs_to :store_product
      t.timestamps
    end
  end
end
