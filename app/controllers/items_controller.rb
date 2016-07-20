class ItemsController < ApplicationController
  def index
    @items = Item.order(name: :asc)
  end

  def show
    @item = Item.find( params[:id] )
  end
end
