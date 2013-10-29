class AddCompanyTable < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :picture
      t.text :info
      t.timestamps
    end
  end
end
