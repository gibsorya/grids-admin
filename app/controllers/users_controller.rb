class UsersController < ApplicationController
  def new
  end

  def index
    users = User.order("created_at DESC")
    render json: users
  end
end
