class TeamsController < ApplicationController
  
  def index
    @teams = Team.paginate page: params[:page]
  end
  
  def show
    @team = Team.find params[:id]
    @users = @team.users.paginate page: params[:page]
  end

  private

    def team_params
      params.require(:team).permit(:name, :description, :leader)
    end
    def admmin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
