require 'modules/require_module'

class HomeController < ApplicationController
  include SunlightSetup
  include ReqPath
  include FindByGenderModule
  include FindByPartyModule
  include RenderPartialModule
  include StatePartialsModule
  include GenderListModule
  include PartyListModule

  before_action :setup # from SunlightSetup module
  helper_method :req_path_final, :male_leg_arr, :female_leg_arr, :democrat_arr, :republican_arr
  respond_to :html, :js

  def index
    # render home/index.html.erb
  end

  def about
    
  end
end
