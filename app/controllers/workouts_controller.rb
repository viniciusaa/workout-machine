class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update]

  def show
    @latest_workouts = Workout.order(created_at: :desc).first(7)
  end

  def index
    Workout.all.find { |workout| @workout = workout if workout.todays_workout? }
    CreateWorkoutService.create if @workout.nil?
    redirect_to workout_path(Workout.last)
  end

  def update
    @workout.exercises.clear
    @workout.add_exercises
    redirect_to workout_path(@workout)
  end

  private

  def set_workout
    @workout = Workout.find(params[:id])
  end
end
