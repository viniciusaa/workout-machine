require "rails_helper"

RSpec.feature "Accessing workout page", type: :feature do
  scenario do
    create_list(:exercise, 10)
    create(:workout, created_at: DateTime.now - 1)
    visit workouts_path
    click_link (DateTime.now - 1).strftime("%d/%m/%Y")
    expect(page).to have_content("Date #{(DateTime.now - 1).strftime("%d/%m/%Y")} Workout")
  end
end
