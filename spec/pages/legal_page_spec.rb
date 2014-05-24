require "spec_helper"

describe "Legal Page" do

  it "should have an h1 'Legal Stuff'" do 
    visit '/legal' 
    page.should have_selector("h1", "Legal Stuff")
  end

end

