require "spec_helper"

describe "About Page" do
  
  it "should have an h1 'About'" do 
    visit '/about' 
    page.should have_selector("h1", "About")
  end

end

