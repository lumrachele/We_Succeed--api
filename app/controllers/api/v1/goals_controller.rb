class Api::V1::GoalsController < ApplicationController


  def create
    @goal = Goal.create(goal_params)
    render json: @goal, status: :ok
  end


  def show
    @goal = Goal.find(params[:id])
    render json: @goal, status: :ok
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)
    render json: @goal, status: :ok
  end

  private

  def goal_params
    params.require(:goal).permit(:id, :name, :value, :reached, :current, :user_id)
  end

end
