class ApplicationController < ActionController::Base
  protect_from_forgery

before_filter :check_login, except: [:index, :sale, :show, :create, :destroy, :new, :check_login]

  include SessionsHelper



  private
    def check_login
      if !session[:user_id]
         session[:back_url] = request.url
        flash[:notice] = 'You need to be logged in first'
        redirect_to login_path
      else
        @user = User.find(session[:user_id])

      end
    end




end
