# Will be able to store a list of exercises
class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update]

  def show
    @latest_workouts = Workout.order(created_at: :desc).first(7)
  end

  def index
    Workout.all.find { |workout| @workout = workout if DailyWorkout.new(workout).todays_workout? }
    @workout.nil?? self.create : (redirect_to workout_path(@workout))
  end

  def create
    @workout = Workout.create
    add_exercises(@workout)
    redirect_to workout_path(@workout)
  end

  def update
    @workout.exercises.clear
    add_exercises(@workout)
    redirect_to workout_path(@workout)
  end

  private

  def set_workout
    @workout = Workout.find(params[:id])
  end

  def add_exercises(workout)
    workout.exercises << Exercise.all.sample(6)
  end
end
