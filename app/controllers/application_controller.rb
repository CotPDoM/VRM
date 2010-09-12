class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authorize, :except => [:login, :new, :create]
  before_filter :feedback_form
  helper_method :logged_in?, :current_user, :user_name
  
  
  protected
    def authorize
      unless session[:user_id]
	redirect_to login_url, :notice => "Please log in"
      end
    end
    
    def feedback_form
      if params[:msg]
	mail = Feedback.feedback(current_user,params[:type],params[:msg])
	Rails.logger.info("HEADER: #{mail.header}")
	mail.deliver
	flash.now[:notice]="Your message has been recieved"
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
