 module FindByGenderModule

  def female_leg_arr
    female_arr = @legislators.select { |var| var.gender == "F" }
  end

  def male_leg_arr
    male_arr = @legislators.select { |var| var.gender == "M" }
    male_arr.each do |male|
      "#{male.first_name} #{male.last_name}"
    end
  end
  
end