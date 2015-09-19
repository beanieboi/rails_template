require 'rails_helper'

RSpec.feature "Landing Page", type: :feature do
  scenario "User is on the Landing Page" do
    visit "/"

    expect(page).to have_text("Welcome")
  end
end
