class ItemsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_item, only: [:show, :update, :destroy]

  def index
    @items = Item.order(name: :asc)
    @available_items = Item.where(available: :true)
    @unavailable_items = Item.where(available: :false)
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find( params[:id] )
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    respond_to do |format|
      if @item.save
        format.html { redirect_to item: @item.id, notice: 'Item was succefully created.'}
        format.json { render status: :created}
      else
        format.html { redirect_to items_path, notice: 'Item was not created.'}
        format.json { render json: @item.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
    @item = Item.find params[:id]
    respond_to do |format|
      if @item.update(item_params)
        format.html {redirect_to @item, notice: 'Item was updated.'}
      else
        format.html {render :edit }
      end
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: 'Item was removed with success.'
  end



  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:user_id, :name, :description, :image, :available, :start_avail, :finish_avail)
  end
end
