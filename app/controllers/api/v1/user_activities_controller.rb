class Api::V1::UserActivitiesController < ApplicationController

  def index
    @userActivities = UserActivity.all
    render json: @userActivities
  end

  def create
    @userActivity = UserActivity.create(user_activity_params)
    render json: @userActivity, status: :ok
  end


  def show
    @userActivity = UserActivity.find(params[:id])
    render json: @userActivity, status: :ok
  end


  #
  # def index
  #   @users = User.all
  #   render json: @users
  # end
  #
  # def show
  #   @user = User.find(params[:id])
  #   render json: @user, status: :ok
  # end

  private

  def user_activity_params
    params.require(:user_activity).permit(:id, :user_id, :activity_id, :goal_id, :points, :note)
  end

end
