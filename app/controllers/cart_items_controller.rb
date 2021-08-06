class CartItemsController < ApplicationController
  def create
    @cart_item = current_user.cart_items.where(item_id: params[:item_id]).where(order_id: nil).exists? ? current_user.cart_items.where(item_id: params[:item_id]).where(order_id: nil).first : current_user.cart_items.new(item_id: params[:item_id])
    @cart_item.quantity += 1
    @cart_item.save
    redirect_to cart_items_index_path
  end
  def index
    @cart_items = current_user.cart_items.includes([:item]).where(order_id: nil)
    @total_price = 0
  end
end
