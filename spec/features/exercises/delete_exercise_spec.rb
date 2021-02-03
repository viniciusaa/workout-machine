require "rails_helper"

RSpec.feature "Delete exercise", type: :feature do
  scenario do
    @exercise = create(:exercise)
    visit new_workout_path
    click_link @exercise.name
    expect(page).to have_content("Name: #{@exercise.name}")
    click_link "Delete"
    expect(page).to_not have_content(@exercise.name)
  end
end
