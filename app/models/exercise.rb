class Exercise < ApplicationRecord
  validates :name, presence: true
  validates :sets, numericality: { only_integer: true }, allow_blank: true
  validates :duration, numericality: { only_integer: true }, allow_blank: true
  validates :effort_level, numericality: {
    only_integer: true, greater_than_: 0, less_than: 6
  }, allow_blank: true
end
