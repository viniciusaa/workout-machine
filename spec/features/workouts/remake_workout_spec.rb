require "rails_helper"

RSpec.feature "Remake workout", type: :feature do
  before do
    create_list(:exercise, 20)
  end

  scenario "after a week" do
    visit workouts_path
    expect(page).to have_content(DateTime.now.strftime("%d/%m/%Y"), count: 2)
    click_link "Remake Workout"
    expect(page).to have_content("Exercises switched")
  end
end
