class AddDefaultQuantitiesToCartItems < ActiveRecord::Migration[6.1]
  def up
    change_column :cart_items, :quantity, :integer, default: 0
  end
  
  def down
    change_column :cart_items, :quantity, :integer
  end
end
