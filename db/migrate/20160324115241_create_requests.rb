class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :orderNo
      t.date :purchaseDate
      t.string :companyName
      t.integer :quantity
      t.integer :cost
      t.date :deliveryDate

      t.timestamps null: false
    end
  end
end
