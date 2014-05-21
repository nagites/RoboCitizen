require 'sunlight/congress'
require 'modules/sunlight_setup'
require 'modules/req_path'
require 'modules/find_by_gender_module'
require 'modules/render_partial_module'

class HomeController < ApplicationController
  include SunlightSetup
  include ReqPath
  include FindByGenderModule
  include RenderPartialModule

  before_action :setup # from SunlightSetup module
  helper_method :req_path_final, :male_leg_arr, :female_leg_arr

  ################################################################
  public
  
  def index
    # render home/index.html.erb
  end

  def alabama
    render_partial("alabama", "state")
  end

  def alaska
    render_partial("alaska", "state")
  end

  def arkansas
    render_partial("arkansas", "state")
  end

  def arizona
    render_partial("arizona", "state")
  end

  def california
    render_partial("california", "state")
  end

  def colorado
    render_partial("colorado", "state")
  end

  def connecticut
    render_partial("connecticut", "state")
  end

  def delaware
    render_partial("delaware", "state")
  end

  def florida
    render_partial("florida", "state")
  end

  def georgia
    render_partial("georgia", "state")
  end

  def hawaii
    render_partial("hawaii", "state")
  end

  def indiana
    render_partial("indiana", "state")
  end

  def iowa
    render_partial("iowa", "state")
  end

  def kansas
    render_partial("kansas", "state")
  end

  def kentucky
    render_partial("kentucky", "state")
  end

  def louisiana
    render_partial("louisiana", "state")
  end

  def maine
    render_partial("maine", "state")
  end

  def maryland
    render_partial("maryland", "state")
  end

  def massachusetts
    render_partial("massachusetts", "state")
  end

  def michigan
    render_partial("michigan", "state")
  end

  def minnesota
    render_partial("minnesota", "state")
  end

  def mississippi
    render_partial("mississippi", "state")
  end

  def missouri
    render_partial("missouri", "state")
  end

  def montana
    render_partial("montana", "state")
  end

  def nebraska
    render_partial("nebraska", "state")
  end

  def nevada
    render_partial("nevada", "state")
  end

  def newhampshire
    render_partial("newhampshire", "state")
  end

  def newjersey
    render_partial("newjersey", "state")
  end

  def newmexico
    render_partial("newmexico", "state")
  end

  def newyork
    render_partial("newyork", "state")
  end

  def northcarolina
    render_partial("northcarolina", "state")
  end

  def northdakota
    render_partial("northdakota", "state")
  end

  def ohio
    render_partial("ohio", "state")
  end

  def oklahoma
    render_partial("oklahoma", "state")
  end

  def oregon
    render_partial("oregon", "state")
  end

  def pennsylvania
    render_partial("pennsylvania", "state")
  end

  def rhodeisland
    render_partial("rhodeisland", "state")
  end

  def southcarolina
    render_partial("southcarolina", "state")
  end

  def tennessee
    render_partial("tennessee", "state")
  end

  def texas
    render_partial("texas", "state")
  end

  def utah
    render_partial("utah", "state")
  end

  def vermont
    render_partial("vermont", "state")
  end

  def virginia
    render_partial("virginia", "state")
  end

  def washington
    render_partial("washington", "state")
  end

  def westvirginia
    render_partial("westvirginia", "state")
  end

  def wisconsin
    render_partial("wisconsin", "state")
  end

  def wyoming
    render_partial("wyoming", "state")
  end

  def female_list_render
    render_partial("female", "gender", "partials")
  end

  def male_list_render
    render_partial("male", "gender", "partials")
  end

  ################################################################

end
