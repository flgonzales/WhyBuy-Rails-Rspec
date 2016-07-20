class UserDetailsController < ApplicationController
  def index
    @user_detail = UserDetail.current_user
  end

  def show
  end
end
