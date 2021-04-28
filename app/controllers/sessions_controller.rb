class SessionsController < ApplicationController
  include SessionsHelper
  def home
    current_user
  end

  def new
    @user = User.new
  end
  def create_fb
    if @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
      u.password = SecureRandom.alphanumeric(10)
      end
      session[:user_id] = @user.id
      render :home
    else
      flash[:alert] = @user.error.full_messages
    end
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
