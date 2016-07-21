class UserDetailsController < ApplicationController
  def index
    @user_detail = current_user
  end

  def show
  end
end
