class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :street_address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
  end
end
