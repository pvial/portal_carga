class AprobadorsController < ApplicationController
  def index
    @aprobadors = Aprobador.all

    render("aprobador_templates/index.html.erb")
  end

  def show
    @aprobador = Aprobador.find(params.fetch("id_to_display"))

    render("aprobador_templates/show.html.erb")
  end
end
