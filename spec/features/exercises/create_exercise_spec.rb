require "rails_helper"

RSpec.feature "Create exercise", type: :feature do
  before do
    visit workouts_path
    click_link "Add new exercise"
  end

  scenario "with valid entries" do
    fill_in "Name", with: "TestName"
    fill_in "Sets", with: 3
    fill_in "Duration", with: 5
    fill_in "exercise[effort_level]", with: 3
    click_button "Confirm"

    expect(page).to have_content("Name: TestName")
  end

  scenario "with invalid entries" do
    fill_in "Name", with: ""
    fill_in "Sets", with: 3
    fill_in "Duration", with: 5
    fill_in "exercise[effort_level]", with: 3
    click_button "Confirm"

    expect(page).to have_content("Name can't be blank")
  end
end
