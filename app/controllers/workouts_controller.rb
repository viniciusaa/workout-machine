# Will be able to store a list of exercises
class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
    @latest_workouts = Workout.order(created_at: :desc).first(7)
  end

  def new
    Workout.all.find { |workout| @workout = workout if DailyWorkout.new(workout).todays_workout? }
    @workout.nil?? self.create : (redirect_to workout_path(@workout))
  end

  def create
    @workout = Workout.create
    @workout.exercises << Exercise.all.sample(6)
    redirect_to workout_path(@workout)
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    self.create
  end
end
