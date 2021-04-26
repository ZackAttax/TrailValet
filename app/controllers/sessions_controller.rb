class SessionsController < ApplicationController
  def home
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      flash[:message]= "You are sign in"
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:message] = "Please try to login again"
      render :new
    end
  end
  def show
  end

  def update
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  private
  

end
