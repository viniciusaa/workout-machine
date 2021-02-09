# Will be able to store a list of exercises
class Workout < ApplicationRecord
  has_and_belongs_to_many :exercises

  def todays_workout?
    created_at.to_date == DateTime.now.to_date
  end

  def add_exercises
    exercises << Exercise.all.sample(6)
  end
end
