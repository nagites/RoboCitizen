module ChamberListModule

  def senate_list_render
    render_partial("senate", "chamber", "partials")
  end

  def house_list_render
    render_partial("house", "chamber", "partials")
  end
  
end