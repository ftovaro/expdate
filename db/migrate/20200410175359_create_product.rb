class CreateProduct < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.float :price, default: 0
      t.date :expiration_date
      t.timestamps
      t.references :store_product, null: false, foreign_key: true
    end
  end
end
