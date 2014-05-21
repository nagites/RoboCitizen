module SunlightSetup
  require 'sunlight/congress'
  attr_accessor :legislators, :state_vars, :state_abbrs

  ################################################################
  public

  def setup
    Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"
    @legislators ||= [] 
    all_legislators
    all_st_arrays
  end

  ################################################################
  private

  def all_legislators
    uri = URI("#{Sunlight::Congress::BASE_URI}/legislators?"\
     "per_page=all&apikey=#{Sunlight::Congress.api_key}")
    JSON.load(Net::HTTP.get(uri))["results"].collect do |json|
      @legislators << Sunlight::Congress::Legislator.new(json)
    end
    @legislators.uniq!
  end

  def find_st_legislators(st)
    @legislators.select { |pol| pol.state == st }
  end

  def all_st_arrays
    @state_vars = { 
      alabama_arr:        "AL",
      alaska_arr:         "AK",
      arkansas_arr:       "AR",
      arizona_arr:        "AZ",
      california_arr:     "CA",
      colorado_arr:       "CO",
      connecticut_arr:    "CT",
      delaware_arr:       "DE",
      florida_arr:        "FL",
      georgia_arr:        "GA", 
      hawaii_arr:         "HI",
      indiana_arr:        "ID",
      iowa_arr:           "IA",
      kansas_arr:         "KS",
      kentucky_arr:       "KY",
      louisiana_arr:      "LA",
      maine_arr:          "ME",
      maryland_arr:       "MD",
      massachusetts_arr: "MA",
      michigan_arr:       "MI",
      minnesota_arr:      "MN",
      mississippi_arr:    "MS",
      missouri_arr:       "MO",
      montana_arr:        "MT",
      nebraska_arr:       "NE",
      nevada_arr:         "NV",
      newhampshire_arr:   "NH",
      newjersey_arr:      "NJ",
      newmexico_arr:      "NM",
      newyork_arr:        "NY",
      northcarolina_arr:  "NC",
      northdakota_arr:    "ND",
      ohio_arr:           "OH",
      oklahoma_arr:       "OK",
      oregon_arr:         "OR", 
      pennsylvania_arr:   "PA",
      rhodeisland_arr:    "RI",
      southcarolina_arr:  "SC",
      southdakota_arr:    "SD",
      tennessee_arr:      "TN",
      texas_arr:          "TX",
      utah_arr:           "UT",
      vermont_arr:        "VT",
      virginia_arr:       "VA",
      washington_arr:     "WA",
      westvirginia_arr:   "WV",
      wisconsin_arr:      "WI",
      wyoming_arr:        "WY" 
    }
    set_inst_variables
  end

  def set_inst_variables
    @state_vars.each { |k, v| instance_variable_set("@#{k}", find_st_legislators(v)) }
  end

################################################################
end