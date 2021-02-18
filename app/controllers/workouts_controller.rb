class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update]

  def show
    @latest_workouts = Workout.order(created_at: :desc).first(7)
  end

  def index
    @workout = Workout.created_today.first
    @workout ||= CreateWorkoutService.create
    redirect_to workout_path(@workout)
  end

  def update
    @workout.reset_exercises!
    redirect_to workout_path(@workout)
  end

  private

  def set_workout
    @workout = Workout.find(params[:id])
  end
end
