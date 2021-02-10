class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
    @latest_workouts = Workout.order(created_at: :desc).first(7)
  end

  def index
    @workout = Workout.find_by(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)

    CreateWorkoutService.create if @workout.nil?

    RemakeWorkoutService.new(@workout).remake if params[:remake]

    redirect_to workout_path(Workout.last)
  end
end
