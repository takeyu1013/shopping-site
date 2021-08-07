class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  def create
  end
  def index
    @items = Item.search(params[:keyword])
  end
  def show
    @item = Item.find(params[:id])
  end
end
