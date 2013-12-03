class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.validate_login(
      params[:session][:email],
      params[:session][:password]
      )
    if user
       session[:user_id] = user.id
       puts "session: #{session}"
       flash[:notice] = 'You are now logged in'
       if session[:back_url]
         redirect_to session[:back_url]
       else
         redirect_to(:controller => 'properties', :action => 'list')
       end

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
