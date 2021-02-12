class Workout < ApplicationRecord
  has_and_belongs_to_many :exercises

  def todays_workout?
    created_at.to_date == DateTime.now.to_date
  end
end
