require 'spec_helper'

describe "State-List Page" do

  it "should have an h2 'Explore Legislators by State'" do 
    visit '/state-list' 
    page.should have_selector("h2", "Explore Legislators by State")
  end
  
end