class AddItemPhotoToItems < ActiveRecord::Migration
  def change
    add_column :items, :itemPhoto, :string
  end
end
