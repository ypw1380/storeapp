class SessionsController < ApplicationController
  
def new
  end
  
  def create
  user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password]) # get this for free from has_secure_password
    session[:user_id] = user.id
    redirect_to root_url, notice: "Logged in"
    else
    flash.now.alert = "Email or password is invalid"
    render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
  
  
 
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end