require "spec_helper"

describe "Female Legislators Page" do
  
  it "should have an h2 'Female Legislators'" do 
    visit '/female' 
    page.should have_selector("h2", "Female Legislators")
  end

end
