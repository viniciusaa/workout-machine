# Will be able to store a list of exercises
class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
  end

  def new
    Workout.all.find { |workout| @workout = workout if workout.created_at.to_date == DateTime.now.to_date }

    if params[:remake]
      @workout.exercises.clear
      redirect_to new_workout_path
    end

    @workout ||= Workout.create

    @workout.exercises << Exercise.all.sample(6) if @workout.exercises.empty?

    @latest_workouts = Workout.order(created_at: :desc).first(7)
  end
end
