class UsersController < ApplicationController
  def index
    user = User.find(params[:id])
    render :json, user
  end
end
