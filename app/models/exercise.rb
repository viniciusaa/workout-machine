class Exercise < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true
end
