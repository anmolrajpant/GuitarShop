class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :itemCode
      t.string :make
      t.string :model
      t.string :color
      t.integer :selingPrice
      t.boolean :condition
      t.string :orderNo
      t.integer :rackNo

      t.timestamps null: false
    end
  end
end
