class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update ]



  def index
    @users = User.all
  end


  def show
  end


  def edit
  end




  def update
    if @user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to root_url
    else
      render "users/edit"
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:name, :surname)
  end
end
