class AddImageColumnToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.text :image
    end
  end
end
