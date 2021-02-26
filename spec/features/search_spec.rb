require 'rails_helper'

describe "user can visit the search path" do
  it "can pull accurate information" do
    visit "/search"

    expect(page).to have_content("Seventeenth Street Plaza")
    expect(page).to have_content("ELEC")
  end
end