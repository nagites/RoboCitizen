require "sunlight/congress"
require "modules/sunlight_setup"

class HomeController < ApplicationController
  include SunlightSetup
  before_action :setup
  helper_method :rpath_to_state

  ################################################################
  public
  
  def index
  end

  def rpath_to_state
    rpath_edges
  end

  def rpath_edges
    rpath = request.path.gsub(/\/home\//, '').capitalize
    rpath = 'New Hampshire' if rpath == 'Newhampshire'
    rpath = 'New Jersey' if rpath == 'Newjersey'
    rpath = 'New Mexico' if rpath == 'Newmexico'
    rpath = 'New York' if rpath == 'Newyork'
    rpath = 'North Carolina' if rpath == 'Northcarolina'
    rpath = 'North Dakota' if rpath == 'Northdakota'
    rpath = 'Rhode Island' if rpath == 'Rhodeisland'
    rpath = 'South Carolina' if rpath == 'Southcarolina'
    rpath = 'West Virginia' if rpath == 'Westvirginia'
    state_arr = @legislators.select { |var| var.state_name == "#{rpath}" }
    state_arr.first.state_name
  end


  def alabama
    partialrend("alabama")
  end
  def alaska
    partialrend("alaska")
  end
  def arkansas
    partialrend("arkansas")
  end
  def arizona
    partialrend("arizona")
  end
  def california
    partialrend("california")
  end
  def colorado
    partialrend("colorado")
  end
  def connecticut
    partialrend("connecticut")
  end
  def delaware
    partialrend("delaware")
  end
  def florida
    partialrend("florida")
  end
  def georgia
    partialrend("georgia")
  end
  def hawaii
    partialrend("hawaii")
  end
  def indiana
    partialrend("indiana")
  end
  def iowa
    partialrend("iowa")
  end
  def kansas
    partialrend("kansas")
  end
  def kentucky
    partialrend("kentucky")
  end
  def louisiana
    partialrend("louisiana")
  end
  def maine
    partialrend("maine")
  end
  def maryland
    partialrend("maryland")
  end
  def massachusetts
    partialrend("massachusetts")
  end
  def michigan
    partialrend("michigan")
  end
  def minnesota
    partialrend("minnesota")
  end
  def mississippi
    partialrend("mississippi")
  end
  def missouri
    partialrend("missouri")
  end
  def montana
    partialrend("montana")
  end
  def nebraska
    partialrend("nebraska")
  end
  def nevada
    partialrend("nevada")
  end
  def newhampshire
    partialrend("newhampshire")
  end
  def newjersey
    partialrend("newjersey")
  end
  def newmexico
    partialrend("newmexico")
  end
  def newyork
    partialrend("newyork")
  end
  def northcarolina
    partialrend("northcarolina")
  end
  def northdakota
    partialrend("northdakota")
  end
  def ohio
    partialrend("ohio")
  end
  def oklahoma
    partialrend("oklahoma")
  end
  def oregon
    partialrend("oregon")
  end
  def pennsylvania
    partialrend("pennsylvania")
  end
  def rhodeisland
    partialrend("rhodeisland")
  end
  def southcarolina
    partialrend("southcarolina")
  end
  def tennessee
    partialrend("tennessee")
  end
  def texas
    partialrend("texas")
  end
  def utah
    partialrend("utah")
  end
  def vermont
    partialrend("vermont")
  end
  def virginia
    partialrend("virginia")
  end
  def washington
    partialrend("washington")
  end
  def westvirginia
    partialrend("westvirginia")
  end
  def wisconsin
    partialrend("wisconsin")
  end
  def wyoming
    partialrend("wyoming")
  end

  ################################################################
  private

  def partialrend(st)
    render partial: "home/states/#{st}", layout: 'layouts/state_template'
  end

  ################################################################
end

