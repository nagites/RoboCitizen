require "spec_helper"

describe "Senate Page" do
  
  it "should have an h2 'Senators'" do 
    visit '/senate' 
    page.should have_selector("h2", "Senators")
  end

end
