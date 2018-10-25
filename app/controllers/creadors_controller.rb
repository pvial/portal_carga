class CreadorsController < ApplicationController
  def index
    @creadors = Creador.page(params[:page]).per(10)

    render("creador_templates/index.html.erb")
  end

  def show
    @creador = Creador.find(params.fetch("id_to_display"))

    render("creador_templates/show.html.erb")
  end
end
