require 'spec_helper'

describe "Home Page" do 
  let(:base_title) { "RoboCitizen | Make the World Awesome" }

    it "should have Header Brand Link 'RoboCitizen'" do 
      visit '/'
      page.should have_selector('a', 'RoboCitizen')
    end 

    it "should have the base title" do 
      visit '/' 
      page.should have_title("#{base_title}")
    end
    
end