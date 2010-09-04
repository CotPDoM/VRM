class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authorize#, :except => [:session_url]
  
  helper_method :logged_in?, :current_user, :user_name
  
  
  protected
    def authorize
      unless session[:user_id]
	render new_session_path, :notice => "Please log in"
      end
    end
    
    def current_user
      @current_user ||= User.find_by_id(session[:user_id])
    end

    def logged_in?
      session[:user_id]
    end
    
    def user_name
      User.find_by_id(session[:user_id]).name
    end
    
end
