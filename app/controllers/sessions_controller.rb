class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.validate_login(
      params[:session][:email],
      params[:session][:password]
      )
    if user
      flash[:notice] = 'You are now logged in'
      redirect_to '/users/index'
    else
      flash[:notice] = 'Invalid username and password'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
