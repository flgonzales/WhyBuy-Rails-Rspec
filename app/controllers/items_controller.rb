class ItemsController < ApplicationController
  def index
    @items = Item.order(name: :asc)
  end

  def show
  end
end
