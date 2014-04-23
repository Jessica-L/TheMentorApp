class UsersController < ApplicationController
  def new
  end


  def index
    #debugger
    @users = User.all
    #@users.sort_by {|f| f.email}
  end

  def new
    @user = User.new
  end

  def create
  @user = User.create!(params[:user])
  end

  def show
  @user = User.find(params[:id])
  @title = user.name
  end

  def logout
    env['warden'].logout
    redirect_to root_path
  end
  def profile
  @user = current_user
  end    
end
