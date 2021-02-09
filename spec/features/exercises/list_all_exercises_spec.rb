require "rails_helper"

RSpec.feature "List all exercises", type: :feature do
  scenario do
    @first_exercise = create(:exercise)
    @second_exercise = create(:exercise)
    @third_exercise = create(:exercise)
    visit workouts_path
    click_link "Check all exercises"
    expect(page).to have_content("Name: #{@first_exercise.name}")
    expect(page).to have_content("Name: #{@second_exercise.name}")
    expect(page).to have_content("Name: #{@third_exercise.name}")
  end
end
