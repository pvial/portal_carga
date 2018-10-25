class CreadorsController < ApplicationController
  def index
    @creadors = Creador.all

    render("creador_templates/index.html.erb")
  end

  def show
    @creador = Creador.find(params.fetch("id_to_display"))

    render("creador_templates/show.html.erb")
  end
end
