require "spec_helper"

describe "Democrats Page" do
  
  it "should have an h2 'Democrat Legislators'" do 
    visit '/democrat' 
    page.should have_selector("h2", "Democrat Legislators")
  end

end
