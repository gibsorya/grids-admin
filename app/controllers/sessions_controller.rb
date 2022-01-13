class SessionsController < ApplicationController
  include ActionController::Helpers
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username].downcase)
    if @user && @user.authenticate(params[:session][:password])
      reset_session
      render json: @user
      log_in @user
      redirect_to root_url
    else
      render json: @user
    end
  end

  def destroy
  end
end
