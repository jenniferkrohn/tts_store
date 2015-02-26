class AddOrderItemsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :order_items, :string
  end
end
