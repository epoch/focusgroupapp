class AddTimestampsColumns < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.timestamps
    end

    change_table :answers do |t|
      t.timestamps
    end

    change_table :products do |t|
      t.timestamps
    end
  end
end
