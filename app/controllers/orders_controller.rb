class OrdersController < ApplicationController
  def create
    Order.new(user: current_user, price: 0)
    # Write a logic to resister cart items to this order
  end
end
