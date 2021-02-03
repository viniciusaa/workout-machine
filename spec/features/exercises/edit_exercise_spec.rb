require "rails_helper"

RSpec.feature "Edit exercise", type: :feature do
  before do
    @exercise = create(:exercise)
    visit new_workout_path
    click_link @exercise.name
    click_link "Edit"
  end

  scenario "with valid entries" do
    fill_in "Name", with: "TestName"
    click_button "Confirm"

    expect(page).to have_content("Name: TestName")
  end
end
