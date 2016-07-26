class ItemsController < ApplicationController
before_action :authenticate_user!
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


  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:)
end
