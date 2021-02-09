require "rails_helper"

RSpec.feature "Display exercise", type: :feature do
  scenario do
    @exercise = create(:exercise)
    visit workouts_path
    click_link @exercise.name
    expect(page).to have_content("Name: #{@exercise.name}")
    expect(page).to have_content("Sets: #{@exercise.sets}")
    expect(page).to have_content("Duration: #{@exercise.duration} min")
    expect(page).to have_content("Difficulty: #{@exercise.effort_level}")
  end
end
