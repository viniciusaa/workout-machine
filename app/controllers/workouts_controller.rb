# Will be able to store a list of exercises
class WorkoutsController < ApplicationController
  def show
    @workout = Workout.find(params[:id])
  end

  def new
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
