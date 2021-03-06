class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id # just a hash
      redirect_to '/'
    else
      render :new
    end
  end
end