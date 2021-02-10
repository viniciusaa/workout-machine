class FullfilWorkoutService
  def initialize(workout)
    @workout = workout
  end

  def add_exercises
    @workout.exercises << Exercise.all.sample(6)
  end
end
