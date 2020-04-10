class CreateStoreProduct < ActiveRecord::Migration[6.0]
  def change
    create_table :store_products do |t|
      t.string :name
      t.string :family
      t.string :brand
      t.timestamps
    end
  end
end
