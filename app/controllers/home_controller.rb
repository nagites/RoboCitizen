require 'sunlight/congress'
require 'modules/sunlight_setup'

class HomeController < ApplicationController
  include SunlightSetup
  before_action :setup

  ################################################################
  public
  
  def index
  end

  def alabama
    render 'home/states/_alabama'
  end
  def alaska
    render 'home/states/_alaska'
  end
  def arkansas
    render 'home/states/_arkansas'
  end
  def arizona
    render 'home/states/_arizona'
  end
  def california
    render 'home/states/_california'
  end
  def colorado
    render 'home/states/_colorado'
  end
  def connecticut
    render 'home/states/_connecticut'
  end
  def delaware
    render 'home/states/_delaware'
  end
  def florida
    render 'home/states/_florida'
  end
  def georgia
    render 'home/states/_georgia'
  end
  def hawaii
    render 'home/states/_hawaii'
  end
  def indiana
    render 'home/states/_indiana'
  end
  def iowa
    render 'home/states/_iowa'
  end
  def kansas
    render 'home/states/_kansas'
  end
  def kentucky
    render 'home/states/_kentucky'
  end
  def louisiana
    render 'home/states/_louisiana'
  end
  def maine
    render 'home/states/_maine'
  end
  def maryland
    render 'home/states/_maryland'
  end
  def massachussetts
    render 'home/states/_massachussetts'
  end
  def michigan
    render 'home/states/_michigan'
  end
  def minnesota
    render 'home/states/_minnesota'
  end
  def mississippi
    render 'home/states/_mississippi'
  end
  def missouri
    render 'home/states/_missouri'
  end
  def montana
    render 'home/states/_montana'
  end
  def nebraska
    render 'home/states/_nebraska'
  end
  def nevada
    render 'home/states/_nevada'
  end
  def newhampshire
    render 'home/states/_newhampshire'
  end
  def newjersey
    render 'home/states/_newjersey'
  end
  def newmexico
    render 'home/states/_newmexico'
  end
  def newyork
    render 'home/states/_newyork'
  end
  def northcarolina
    render 'home/states/_northcarolina'
  end
  def northdakota
    render 'home/states/_northdakota'
  end
  def ohio
    render 'home/states/_ohio'
  end
  def oklahoma
    render 'home/states/_oklahoma'
  end
  def oregon
    render 'home/states/_oregon'
  end
  def pennsylvania
    render 'home/states/_pennsylvania'
  end
  def rhodeisland
    render 'home/states/_rhodeisland'
  end
  def southcarolina
    render 'home/states/_southcarolina'
  end
  def tennessee
    render 'home/states/_tennessee'
  end
  def texas
    render 'home/states/_texas'
  end
  def utah
    render 'home/states/_utah'
  end
  def vermont
    render 'home/states/_vermont'
  end
  def virginia
    render 'home/states/_virginia'
  end
  def washington
    render 'home/states/_washington'
  end
  def westvirginia
    render 'home/states/_westvirginia'
  end
  def wisconsin
    render 'home/states/_wisconsin'
  end
  def wyoming
    render 'home/states/_wyoming'
  end
  ################################################################

end

