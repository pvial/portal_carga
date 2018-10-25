class EjerciciosController < ApplicationController
  def index
    @ejercicios = Ejercicio.all

    render("ejercicio_templates/index.html.erb")
  end

  def show
    @ejercicio = Ejercicio.find(params.fetch("id_to_display"))

    render("ejercicio_templates/show.html.erb")
  end

  def new_form
    @ejercicio = Ejercicio.new

    render("ejercicio_templates/new_form.html.erb")
  end

  def create_row
    @ejercicio = Ejercicio.new

    @ejercicio.aprobado = params.fetch("aprobado")
    @ejercicio.contenido_id = params.fetch("contenido_id")
    @ejercicio.bandera = params.fetch("bandera")
    @ejercicio.comentario = params.fetch("comentario")
    @ejercicio.molde_id = params.fetch("molde_id")
    @ejercicio.enunciado = params.fetch("enunciado")
    @ejercicio.imagen = params.fetch("imagen")
    @ejercicio.resp_correcta = params.fetch("resp_correcta")
    @ejercicio.w1 = params.fetch("w1")
    @ejercicio.w2 = params.fetch("w2")
    @ejercicio.w3 = params.fetch("w3")
    @ejercicio.w4 = params.fetch("w4")
    @ejercicio.op1 = params.fetch("op1")
    @ejercicio.op2 = params.fetch("op2")
    @ejercicio.op3 = params.fetch("op3")
    @ejercicio.op4 = params.fetch("op4")
    @ejercicio.op5 = params.fetch("op5")
    @ejercicio.hint = params.fetch("hint")
    @ejercicio.dificultad = params.fetch("dificultad")
    @ejercicio.habilidad = params.fetch("habilidad")
    @ejercicio.last_pre_ex_id = params.fetch("last_pre_ex_id")
    @ejercicio.creador_id = params.fetch("creador_id")
    @ejercicio.aprobador_id = params.fetch("aprobador_id")

    if @ejercicio.valid?
      @ejercicio.save

      redirect_back(:fallback_location => "/ejercicios", :notice => "Ejercicio created successfully.")
    else
      render("ejercicio_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @ejercicio = Ejercicio.find(params.fetch("prefill_with_id"))

    render("ejercicio_templates/edit_form.html.erb")
  end

  def update_row
    @ejercicio = Ejercicio.find(params.fetch("id_to_modify"))

    @ejercicio.aprobado = params.fetch("aprobado")
    @ejercicio.contenido_id = params.fetch("contenido_id")
    @ejercicio.bandera = params.fetch("bandera")
    @ejercicio.comentario = params.fetch("comentario")
    @ejercicio.molde_id = params.fetch("molde_id")
    @ejercicio.enunciado = params.fetch("enunciado")
    @ejercicio.imagen = params.fetch("imagen")
    @ejercicio.resp_correcta = params.fetch("resp_correcta")
    @ejercicio.w1 = params.fetch("w1")
    @ejercicio.w2 = params.fetch("w2")
    @ejercicio.w3 = params.fetch("w3")
    @ejercicio.w4 = params.fetch("w4")
    @ejercicio.op1 = params.fetch("op1")
    @ejercicio.op2 = params.fetch("op2")
    @ejercicio.op3 = params.fetch("op3")
    @ejercicio.op4 = params.fetch("op4")
    @ejercicio.op5 = params.fetch("op5")
    @ejercicio.hint = params.fetch("hint")
    @ejercicio.dificultad = params.fetch("dificultad")
    @ejercicio.habilidad = params.fetch("habilidad")
    @ejercicio.last_pre_ex_id = params.fetch("last_pre_ex_id")
    @ejercicio.creador_id = params.fetch("creador_id")
    @ejercicio.aprobador_id = params.fetch("aprobador_id")

    if @ejercicio.valid?
      @ejercicio.save

      redirect_to("/ejercicios/#{@ejercicio.id}", :notice => "Ejercicio updated successfully.")
    else
      render("ejercicio_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @ejercicio = Ejercicio.find(params.fetch("id_to_remove"))

    @ejercicio.destroy

    redirect_to("/ejercicios", :notice => "Ejercicio deleted successfully.")
  end
end
