class ContentidosController < ApplicationController
  def index
    @contentidos = Contentido.page(params[:page]).per(10)

    render("contentido_templates/index.html.erb")
  end

  def show
    @ejercicio = Ejercicio.new
    @pre_ex = PreEx.new
    @contentido = Contentido.find(params.fetch("id_to_display"))

    render("contentido_templates/show.html.erb")
  end

  def new_form
    @contentido = Contentido.new

    render("contentido_templates/new_form.html.erb")
  end

  def create_row
    @contentido = Contentido.new

    @contentido.eje_id = params.fetch("eje_id")

    if @contentido.valid?
      @contentido.save

      redirect_back(:fallback_location => "/contentidos", :notice => "Contentido created successfully.")
    else
      render("contentido_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_eje
    @contentido = Contentido.new

    @contentido.eje_id = params.fetch("eje_id")

    if @contentido.valid?
      @contentido.save

      redirect_to("/ejes/#{@contentido.eje_id}", notice: "Contentido created successfully.")
    else
      render("contentido_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @contentido = Contentido.find(params.fetch("prefill_with_id"))

    render("contentido_templates/edit_form.html.erb")
  end

  def update_row
    @contentido = Contentido.find(params.fetch("id_to_modify"))

    @contentido.eje_id = params.fetch("eje_id")

    if @contentido.valid?
      @contentido.save

      redirect_to("/contentidos/#{@contentido.id}", :notice => "Contentido updated successfully.")
    else
      render("contentido_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_eje
    @contentido = Contentido.find(params.fetch("id_to_remove"))

    @contentido.destroy

    redirect_to("/ejes/#{@contentido.eje_id}", notice: "Contentido deleted successfully.")
  end

  def destroy_row
    @contentido = Contentido.find(params.fetch("id_to_remove"))

    @contentido.destroy

    redirect_to("/contentidos", :notice => "Contentido deleted successfully.")
  end
end
