module FindByChamberModule

  def senate_leg_arr
    @legislators.select { |var| var.chamber == "senate" }
  end

  def house_leg_arr
    @legislators.select { |var| var.chamber == "house" }
  end
  
end