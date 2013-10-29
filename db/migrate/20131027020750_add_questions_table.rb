class AddQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.integer :product_id
    end
  end
end
