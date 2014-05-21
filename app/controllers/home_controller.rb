require 'modules/require_module'

class HomeController < ApplicationController
  include SunlightSetup
  include ReqPath
  include FindByGenderModule
  include RenderPartialModule
  include StatePartialsModule
  include GenderListModule

  before_action :setup # from SunlightSetup module
  helper_method :req_path_final, :male_leg_arr, :female_leg_arr
  
  def index
    # render home/index.html.erb
  end

end
