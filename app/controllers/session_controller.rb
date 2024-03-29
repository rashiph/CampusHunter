class SessionController < ApplicationController
  def new
    @message = "WELCOME"
  end

  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      #require "pry"
      #binding.pry
      @message = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/session/new", :notice => "Successfully logged out!"
  end
end
