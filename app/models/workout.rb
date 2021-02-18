class Workout < ApplicationRecord
  has_and_belongs_to_many :exercises

  scope :created_today, -> { where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day) }

  def todays_workout?
    created_at.to_date == DateTime.now.to_date
  end

  def reset_exercises!
    exercises.clear
    exercises << Exercise.all.sample(6)
  end
end
