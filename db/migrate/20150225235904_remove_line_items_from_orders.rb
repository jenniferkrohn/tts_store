class RemoveLineItemsFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :line_items, :string
  end
end
