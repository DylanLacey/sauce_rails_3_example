require "spec_helper"

describe "The front page", :sauce => true do
  it "Should say hello" do
    visit "/posts"
    page.should have_content "All your Posts"
  end
end
