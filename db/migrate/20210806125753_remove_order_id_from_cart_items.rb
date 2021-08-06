class RemoveOrderIdFromCartItems < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :cart_items, :orders
  end
end
