class ApplicationController < ActionController::Base
  protect_from_forgery
 def login_required
    if session[:user]
      return true
    end
    flash[:warning]='Please login to continue'
    session[:return_to]=request.url
    redirect_to :controller => "user", :action => "login"
    return false 
  end

  def current_user
    session[:user]
  end

  def redirect_to_stored
    
      redirect_to :controller=>'user', :action=>'welcome'
    
  end



end
