class CreateWorkoutService
  def self.create
    workout = Workout.create
    workout.reset_exercises!
    workout
  end
end
