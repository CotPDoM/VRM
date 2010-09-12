module PeopleHelper
  
  def filter_order
    if params[:filter]
      if session[:filter] == params[:filter]
	session[:filter] = params[:filter] + " desc"
      else
	session[:filter] = params[:filter]
      end
    end
  end
end
