class ApplicationController < ActionController::Base
  
  def current_user 
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  helper_method :current_user
  
  def authenticate_user!
    if current_user
    else
      redirect_to login_path
    end
  end
end
