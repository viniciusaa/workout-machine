# Will be able to store a list of exercises
class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:edit, :update, :show, :destroy]

  def show; end

  def index
    @exercises = Exercise.all.paginate(page: params[:page], per_page: 10)
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to @exercise
    else
      render :new
    end
  end

  def edit; end

  def update
    if @exercise.update(exercise_params)
      redirect_to @exercise
    else
      render :edit
    end
  end

  def destroy
    @exercise.destroy
    redirect_to workouts_path
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :sets, :duration, :effort_level)
  end

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end
end
