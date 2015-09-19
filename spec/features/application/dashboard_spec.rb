require 'rails_helper'

RSpec.feature "Dashboard", type: :feature do
  fixtures :users

  scenario "User is on the Dashboard" do
    visit "/sessions/new"

    fill_in "user_email", with: "ich@abwesend.com"
    fill_in "user_password", with: "password"

    click_button "Log in"

    visit "/dashboard"

    expect(page).to have_text("Dashboard")
  end
end
