 module FindByGenderModule

  def female_leg_arr
    @legislators.select { |var| var.gender == "F" }
  end

  def male_leg_arr
    @legislators.select { |var| var.gender == "M" }
  end
  
end