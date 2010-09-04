class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authorize, :except => [:index]
  
  
  
  
  protected
    def authorize
#       unless session[:user_id]
# 	redirect_to new_session_url, :notice => "please log in"
#       end
    end
    
    def current_user
      @current_user ||= People.find_by_id(session[:user_id])
    end

end
