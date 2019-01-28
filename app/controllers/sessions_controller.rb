class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    puts params.inspect
    @user = User.find_by_email(params[:email])
    puts @user.inspect
    puts params[:email].class
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = 'Successfully Logged In!'
      redirect_to user_path(@user)
    else
      flash[:warning] = 'Invaild Username or Password'
      redirect_to sign_in_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:success] = 'Logged out!'
    redirect_to login_path
  end
  
end
