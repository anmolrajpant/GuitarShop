class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :uniqueID
      t.string :make
      t.string :model
      t.integer :quantity
      t.string :color
      t.integer :sellingPrice
      t.string :condition
      t.integer :rackNo

      t.timestamps null: false
    end
  end
end
