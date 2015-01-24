class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :buyer
      t.string :description
      t.decimal :price
      t.integer :quantity
      t.text  :address
      t.string :supplier

      t.timestamps
    end
  end
end
