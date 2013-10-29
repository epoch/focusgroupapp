class AddProductsTable < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :about
      t.text :product_type
      t.decimal :company_price
      t.integer :company_id
    end
  end
end
