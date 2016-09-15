class ActionsController < ApplicationController

  def index
    @actions = Action.all
    #@actions = Action.where("user_id = ?", params[:current_user])
  end

  def show
  end

  def new
    @action = Action.new
    @action.item_id = params[:item_id]
  end


  def create
    @action = Action.new(action_params)
    @action.user_id = current_user
    @action.owner = item.user_id

    respond_to do |format|
      if @action.save
        format.html { redirect_to @action, notice: 'Item was succefully reserved.'}
      else
        format.html { render :new}
      end
    end
  end

  def edit
  end
  
  def update
    @action = Action.find params[:id]
    respond_to do |format|
      if @action.update(action_params)
        format.html { redirect_to @action, notice: "Item reservation was updated with success."}
      else
        format.html {render :edit}
      end
    end
  end

  def destroy
    @action.destroy
    respond_to do |format|
      format.html { redirect_to actions_url, notice: "Reservation was deleted."}
    end
  end

  private

  def set_action
    @action = Action.find(params[:id])
  end

  def action_params
    params.require(:action).permit(:user_id, :item_id, :owner)
  end
end
