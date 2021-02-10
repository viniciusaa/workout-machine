class CreateWorkoutService
  def self.create
    workout = Workout.create
    FullfilWorkoutService.new(workout).add_exercises
  end
end
