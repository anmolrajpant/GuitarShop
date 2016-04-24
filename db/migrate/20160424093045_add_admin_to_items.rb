class AddAdminToItems < ActiveRecord::Migration
  def change
    add_column :items, :admin, :string
  end
end
