class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  def create
    @item = Item.new(params.require(:item).permit(:name, :price, :stock, :image_url));
    @item.save
  end
  def index
    @items = Item.search(params[:keyword])
  end
  def show
    @item = Item.find(params[:id])
  end
end
