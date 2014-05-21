Rails.application.routes.draw do

  root "home#index"
  
  get 'male' => 'home#male_list_render'
  get 'female' => 'home#female_list_render'

  get 'alabama' => 'home#alabama'
  get 'alaska' => 'home#alaska'
  get 'arkansas' => 'home#arkansas'
  get 'arizona' => 'home#arizona'
  get 'california' => 'home#california'
  get 'colorado' => 'home#colorado'
  get 'connecticut' => 'home#connecticut'
  get 'delaware' => 'home#delaware'
  get 'florida' => 'home#florida'
  get 'georgia' => 'home#georgia'
  get 'hawaii' => 'home#hawaii'
  get 'indiana' => 'home#indiana'
  get 'iowa' => 'home#iowa'
  get 'kansas' => 'home#kansas'
  get 'kentucky' => 'home#kentucky'
  get 'louisiana' => 'home#louisiana'
  get 'maine' => 'home#maine'
  get 'maryland' => 'home#maryland'
  get 'massachusetts' => 'home#massachusetts'
  get 'michigan' => 'home#michigan'
  get 'minnesota' => 'home#minnesota'
  get 'mississippi' => 'home#mississippi'
  get 'missouri' => 'home#missouri'
  get 'montana' => 'home#montana'
  get 'nebraska' => 'home#nebraska'
  get 'nevada' => 'home#nevada'
  get 'newhampshire' => 'home#newhampshire'
  get 'newjersey' => 'home#newjersey'
  get 'newmexico' => 'home#newmexico'
  get 'newyork' => 'home#newyork'
  get 'northcarolina' => 'home#northcarolina'
  get 'northdakota' => 'home#northdakota'
  get 'ohio' => 'home#ohio'
  get 'oklahoma' => 'home#oklahoma'
  get 'oregon' => 'home#oregon'
  get 'pennsylvania' => 'home#pennsylvania'
  get 'rhodeisland' => 'home#rhodeisland'
  get 'southcarolina' => 'home#southcarolina'
  get 'tennessee' => 'home#tennessee'
  get 'texas' => 'home#texas'
  get 'utah' => 'home#utah'
  get 'vermont' => 'home#vermont'
  get 'virginia' => 'home#virginia'
  get 'washington' => 'home#washington'
  get 'westvirginia' => 'home#westvirginia'
  get 'wisconsin' => 'home#wisconsin'
  get 'wyoming' => 'home#wyoming'

end
