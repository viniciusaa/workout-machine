# Will be able to store a list of exercises
class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
  end

  def new
    if Workout.last.created_at.to_date == DateTime.now.to_date
      redirect_to workout_path(Workout.last)
    end

    @workout = Workout.new
  end

  def create
    @workout = Workout.new
    if @workout.save
      redirect_to @workout
    else
      render :new
    end
  end
end
