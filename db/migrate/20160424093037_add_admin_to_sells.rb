class AddAdminToSells < ActiveRecord::Migration
  def change
    add_column :sells, :admin, :string
  end
end
