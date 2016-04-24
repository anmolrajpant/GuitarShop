class AddUserToSells < ActiveRecord::Migration
  def change
    add_column :sells, :user, :string
  end
end
