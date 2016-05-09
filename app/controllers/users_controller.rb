class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user.id) #if user_params[:admin] == 0
    
    # redirect_to admin_signup if user_params[:admin] == 1
  end



  private
  def user_params
    params.require(:user).permit(:name, :height, :nausea, :tickets, :happiness, :admin)
  end
end
