class ApplicationController < ActionController::Base
  protect_from_forgery

# before_filter :check_login, except: [:index, :sale, :show]

  include SessionsHelper



  private
    def check_login
      if !session[:user_id]
        flash[:notice] = 'You need to be logged in first'
        redirect_to login_path
      else
        @user = User.find(session[:user_id])
      end
    end




end
