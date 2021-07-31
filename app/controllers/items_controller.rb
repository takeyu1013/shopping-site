class ItemsController < ApplicationController
  def new
  end
  def index
    @items = Item.search(params[:keyword])
  end
end
