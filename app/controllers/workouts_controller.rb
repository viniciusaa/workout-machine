class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
    @latest_workouts = Workout.order(created_at: :desc).first(7)
  end

  def index
    Workout.all.find { |workout| @workout = workout if workout.todays_workout? }

    CreateWorkoutService.create if @workout.nil?

    RemakeWorkoutService.new(@workout).remake if params[:remake]

    redirect_to workout_path(Workout.last)
  end
end
