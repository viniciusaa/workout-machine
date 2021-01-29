require "rails_helper"

RSpec.feature "View daily workout", type: :feature do
  before do
    create_list(:exercise, 20)
  end

  scenario "for the first time" do
    visit new_workout_path
    expect(page).to have_content(DateTime.now.strftime("%d/%m/%Y"), count: 2)
    expect(page).to have_content("Difficulty", count: 6)
  end

  scenario "after a week" do
    create_list(:workout, 7)
    visit new_workout_path
    expect(page).to have_content(DateTime.now.strftime("%d/%m/%Y"), count: 2)
    expect(page).to have_content(DateTime.now.strftime("01/01/2021"), count: 6)
    expect(page).to have_content("Difficulty", count: 6)
  end
end
