class CreateWorkoutService
  def self.create
    workout = Workout.create
    CompleteWorkoutService.new(workout).add_exercises
    workout
  end
end
