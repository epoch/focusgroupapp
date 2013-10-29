class AddPasswordColumnToCompanies < ActiveRecord::Migration
  def change
    change_table :companies do |t|
      t.string :password_digest
    end
  end
end
