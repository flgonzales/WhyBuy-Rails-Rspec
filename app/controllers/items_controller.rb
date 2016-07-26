class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:show, :update, :destroy]

  def index
    @items = Item.order(name: :asc)
  end

  def show
    @item = Item.find( params[:id] )
  end

  def update
    @item.update(item_params)
    redirect_to @item
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: 'Item was removed with sucess.'
  end

  def edit
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:name, :description, :user_id).permit(:available, :start_avail, :finish_avail)
  end
end
