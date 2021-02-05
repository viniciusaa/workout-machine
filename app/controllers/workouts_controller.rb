# Will be able to store a list of exercises
class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
  end

  def new
    Workout.all.find { |workout| @workout = workout if workout.created_at.to_date == DateTime.now.to_date }
    @workout.nil?? self.create

    @latest_workouts = Workout.order(created_at: :desc).first(7)
  end

  def create
    @workout = Workout.create
    @workout.exercises << Exercise.all.sample(6)
  end
end
