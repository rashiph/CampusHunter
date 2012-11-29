class UserController < ApplicationController

  #before_filter :require_login

  #layout "session"

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      @message = "User Added Successfully!"
    end
    render "new"
  end

  def del
    @user = User.find_by_username(params[:username])
    if @user.nil?

      @message = "User doesn't exist!"
    elsif @user.destroy
      @message = "User deleted successfully!"
    end
    render :action => "destroy"
  end

  def destroy
  end

end
