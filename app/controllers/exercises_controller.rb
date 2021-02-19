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
      flash_success("added")
      redirect_to @exercise
    else
      flash_danger("add")
      render :new
    end
  end

  def edit; end

  def update
    if @exercise.update(exercise_params)
      flash_success("updated")
      redirect_to @exercise
    else
      flash_danger("updated")
      render :edit
    end
  end

  def destroy
    @exercise.destroy
    flash_success("deleted")
    redirect_to workouts_path
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :sets, :duration, :effort_level)
  end

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  def flash_success(action)
    flash[:success] = "Exercise successfully #{action}"
  end

  def flash_danger(action)
    flash[:danger] = "Failed to #{action} exercise"
  end
end
