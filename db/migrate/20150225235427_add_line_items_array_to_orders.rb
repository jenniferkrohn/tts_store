class AddLineItemsArrayToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :line_items_array, :string
  end
end
