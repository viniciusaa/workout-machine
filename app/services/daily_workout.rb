class DailyWorkout
  def initialize(workout)
    @workout = workout
  end

  def todays_workout?
    @workout.created_at.to_date == DateTime.now.to_date
  end
end
