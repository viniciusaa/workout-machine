class RemakeWorkoutService
  def initialize(workout)
    @workout = workout
  end

  def remake
    @workout.exercises.clear
    @workout.add_exercises
  end
end
