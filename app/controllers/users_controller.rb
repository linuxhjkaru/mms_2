class UsersController < ApplicationController
  before_action :admin_user, only: [:create, :edit, :update, :destroy]

  def show
    @user = User.find params[:id] 
    @position = Position.find @user.position_id
    @team = @user.team
  end

  def index
    @users = User.paginate page: params[:page]
    
  end

end
