require "spec_helper"

describe "Republicans Page" do
  
  it "should have an h2 'Republican Legislators'" do 
    visit '/republican' 
    page.should have_selector("h2", "Republican Legislators")
  end

end
