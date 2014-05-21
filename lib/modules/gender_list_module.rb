module GenderListModule
	
  def female_list_render
    render_partial("female", "gender", "partials")
  end

  def male_list_render
    render_partial("male", "gender", "partials")
  end

end