class UsersController < ApplicationController
  before_action :set_user, only: []
  def index
    @users = User.all
  end

  def create
    user = User.create(user_params)
    redirect_to users_path
  end

  def new
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:pseudo, :email, :mdp)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
