module ReqPath

  def req_path
    request.path.gsub(/\//, '').capitalize
  end

  def req_path_edges
    req_path_e = 'New Hampshire' if req_path == 'Newhampshire'
    req_path_e = 'New Jersey' if req_path == 'Newjersey'
    req_path_e = 'New Mexico' if req_path == 'Newmexico'
    req_path_e = 'New York' if req_path == 'Newyork'
    req_path_e = 'North Carolina' if req_path == 'Northcarolina'
    req_path_e = 'North Dakota' if req_path == 'Northdakota'
    req_path_e = 'Rhode Island' if req_path == 'Rhodeisland'
    req_path_e = 'South Carolina' if req_path == 'Southcarolina'
    req_path_e = 'West Virginia' if req_path == 'Westvirginia'
    req_path_e = 'Democrats' if req_path == 'Democrat'
    req_path_e = 'Republicans' if req_path == 'Republican'
    req_path_e = 'Male Legislators' if req_path == 'Male'
    req_path_e = 'Female Legislators' if req_path == 'Female'
    req_path_e = 'Senators' if req_path == 'Senate'
    req_path_e = 'Congresspeople' if req_path == 'House'
    req_path_e || nil
  end

  def req_path_sanitize 
    req_path_edges || req_path
  end

  def req_path_final
    req_path_frozen = req_path_sanitize
    case req_path_frozen
    when 'Democrats' then 'Democrats'
    when 'Republicans' then 'Republicans'
    when 'Male Legislators' then 'Male Legislators'
    when 'Female Legislators' then 'Female Legislators'
    when 'Senators' then 'Senators'
    when 'Congresspeople' then 'Congresspeople'
    else
      state_arr = @legislators.select { |var| var.state_name == "#{req_path_frozen}" }
      state_arr.first.state_name
    end
  end

end