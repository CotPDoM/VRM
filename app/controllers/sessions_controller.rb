class SessionsController < ApplicationController
  
  def new
    render :action => :new
  end


  def create
    user=User.authenticate(params[:email], params[:password])
    if user
      session[:user_id]=user.id
      redirect_to root_url, :notice => "Welcome back, #{user.name}!"
    else
      flash[:error] = "Invalid email/password combination!"
      render :action => :new
    end
  end

  def destroy
    session[:user_id]= nil
    redirect_to root_url, :notice => "You've been logged out."
  end
end