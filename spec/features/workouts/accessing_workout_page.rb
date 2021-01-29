require "rails_helper"

RSpec.feature "Accessing workout page", type: :feature do
  create_list(:exercise, 6)
  visit new_workout_path
  click_link DateTime.now.strftime("%d/%m/%Y")
  expect(page).to have_content("Date #{DateTime.now.strftime('%d/%m/%Y')} Workout")
  expect(page).to have_content("Difficulty", count: 6)
end
