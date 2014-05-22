module FindByPartyModule

  def democrat_arr
    @legislators.select { |var| var.party == "D" }
  end

  def republican_arr
    @legislators.select { |var| var.party == "R" }
  end

end