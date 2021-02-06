class Workout < ApplicationRecord
  has_and_belongs_to_many :exercises

  def todays_workout?
    self.created_at.to_date == DateTime.now.to_date
  end

  def add_exercises
    self.exercises << Exercise.all.sample(6)
  end
end
