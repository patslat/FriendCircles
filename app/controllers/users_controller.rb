class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_url
    else
      render :new
    end
  end
end
