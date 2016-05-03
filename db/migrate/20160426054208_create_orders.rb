class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :purchaseDate
      t.string :pruchaseCompany
      t.integer :quantity
      t.integer :price
      t.date :deliveryDate

      t.timestamps null: false
    end
  end
end
