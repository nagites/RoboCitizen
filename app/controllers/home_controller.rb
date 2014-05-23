require 'modules/require_module'

class HomeController < ApplicationController
  include SunlightSetup
  include ReqPath
  include FindByGenderModule
  include FindByPartyModule
  include FindByChamberModule
  include RenderPartialModule
  include StatePartialsModule
  include GenderListModule
  include PartyListModule
  include ChamberListModule

  before_action :setup # from SunlightSetup module
  helper_method :req_path_final, :male_leg_arr, :female_leg_arr, :democrat_arr, :republican_arr,
                :house_leg_arr, :senate_leg_arr
  respond_to :html, :js

  def index
    # render home/index.html.erb
  end

  def about
    # render home/about.html.erb
  end

  def state_list
    # render home/state_list.html.erb
  end

  def legal
    # render home/legal.html.erb
  end

end
