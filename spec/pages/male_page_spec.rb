require "spec_helper"

describe "Male Legislators Page" do
  
  it "should have an h2 'Male Legislators'" do 
    visit '/male' 
    page.should have_selector("h2", "Male Legislators")
  end

end
