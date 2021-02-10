class CreateWorkoutService
  def self.create
    workout = Workout.create
    workout.add_exercises
  end
end
