module RenderPartialModule
	
  def render_partial(filter, layo, poptional = "states",loptional = "templates")
    render partial: "home/#{poptional}/#{filter}", layout: "layouts/#{loptional}/#{layo}_template"
  end

end