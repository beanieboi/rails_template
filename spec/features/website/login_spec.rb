require 'rails_helper'

RSpec.feature "Login", type: :feature do
  scenario "User logs in with correct password" do
    visit "/sessions/new"

    fill_in "user_email", with: "ich@abwesend.com"
    fill_in "user_password", with: "password"

    click_button "Log in"

    expect(page).to have_text("Dashboard")
  end

  scenario "User logs in with wrong password" do
    visit "/sessions/new"

    fill_in "user_email", with: "ich@abwesend.com"
    fill_in "user_password", with: "wrongpassword"

    click_button "Log in"

    expect(page).to have_text("Invalid email or password")
  end

end
