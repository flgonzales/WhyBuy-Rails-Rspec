class ItemsController < ApplicationController
before_action :authenticate_user!
  def index
    @items = Item.order(name: :asc)
  end

  def show
    @item = Item.find( params[:id] )
  end
end
