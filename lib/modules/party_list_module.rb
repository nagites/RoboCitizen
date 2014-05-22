module PartyListModule

  def democrat_list_render
    render_partial("democrat", "party", "partials")
  end

  def republican_list_render
    render_partial("republican", "party", "partials")
  end

end