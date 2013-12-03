class ApplicationController < ActionController::Base
  protect_from_forgery

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



#   before_filter :require_login

#   private
#     def require_login
#       unless logged_in?
#         flash[:error] = 'You must be logged in to access this section'
#         redirect_to new_login_url
#       end
#     end

end
