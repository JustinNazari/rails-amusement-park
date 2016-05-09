class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(id: params[:user][:id])
    session[:user_id] = @user.id
      if @user.admin == 0
        session[:admin] = false
      else
        session[:admin] = true
      end
    redirect_to user_path(@user)
  end

    def destroy
      session.delete :user_id
      redirect_to root_path
    end

end
