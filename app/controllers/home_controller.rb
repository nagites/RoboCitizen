require 'sunlight/congress'
require 'modules/sunlight_setup'

class HomeController < ApplicationController
  include SunlightSetup
  before_action :setup

  ################################################################
  public
  
  def index
  end
  
  ################################################################

end

