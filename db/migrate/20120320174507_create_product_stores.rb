class CreateProductStores < ActiveRecord::Migration
  def change
    create_table :product_stores do |t|
      t.string :product_name
      t.string :product_category
      t.string :price
      t.text :description

      t.timestamps
    end
  end
end
