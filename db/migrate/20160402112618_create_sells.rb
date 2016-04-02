class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      t.date :date
      t.string :customerName
      t.string :customerAddress
      t.integer :contact

      t.timestamps null: false
    end
  end
end
