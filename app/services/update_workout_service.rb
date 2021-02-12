class UpdateWorkoutService
  def initialize(workout)
    @workout = workout
  end

  def update
    @workout.exercises.clear
    CompleteWorkoutService.new(@workout).add_exercises
  end
end
