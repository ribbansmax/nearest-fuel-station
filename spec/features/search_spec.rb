require 'rails_helper'

describe "user can visit the search path" do
  it "can pull accurate information" do
    visit "/search"
  end
end