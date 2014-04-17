class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Thank you for signing up"
    else
      render "new"
    end
  end

  private 
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end
  
  
 
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
