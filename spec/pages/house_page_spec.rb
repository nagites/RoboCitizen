require "spec_helper"

describe "House Page" do
  
  it "should have an h2 'Congresspeople'" do 
    visit '/house' 
    page.should have_selector("h2", "Congresspeople")
  end

end
