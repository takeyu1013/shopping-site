class OrdersController < ApplicationController
  def create
    @total_price = params[:total_price].to_i
    @order = current_user.orders.new(price: @total_price)
    @order.save
  end
end
