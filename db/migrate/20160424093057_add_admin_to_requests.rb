class AddAdminToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :admin, :string
  end
end
