class Admin::ActivityLogsController < ApplicationController
  
  
  def index
    @activity_logs = ActivityLog.paginate page: params[:page]
  end
  
  def destroy
    ActivityLog.find(params[:id]).destroy
    flash[:success] = "Skill deleted."
    redirect_to admin_activity_logs_url
  end
  
end
