class OrdersController < ApplicationController
  def create
    @total_price = params[:total_price].to_i
    @order = current_user.orders.new(price: @total_price)
    @order.save
    @cart_items = current_user.cart_items
    @cart_items.each do | cart_item |
      cart_item.order_id = @order.id
      cart_item.save
    end
    redirect_to orders_index_path
  end

  def index
    @orders = current_user.orders
  end
end
