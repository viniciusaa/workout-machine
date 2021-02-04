# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
  Exercise.create!(name: FFaker::Name.first_name, sets: FFaker::Random.rand(1..9), duration: FFaker::Random.rand(1..60), effort_level: FFaker::Random.rand(1..5))
  Workout.create!(created_at: FFaker::Time.between(20.days.ago, 1.days.ago))
end
