class AprobadorsController < ApplicationController
  def index
    @aprobadors = Aprobador.page(params[:page]).per(10)

    render("aprobador_templates/index.html.erb")
  end

  def show
    @aprobador = Aprobador.find(params.fetch("id_to_display"))

    render("aprobador_templates/show.html.erb")
  end
end
