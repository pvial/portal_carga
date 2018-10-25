class EjesController < ApplicationController
  def index
    @ejes = Eje.page(params[:page]).per(10)

    render("eje_templates/index.html.erb")
  end

  def show
    @contentido = Contentido.new
    @eje = Eje.find(params.fetch("id_to_display"))

    render("eje_templates/show.html.erb")
  end

  def new_form
    @eje = Eje.new

    render("eje_templates/new_form.html.erb")
  end

  def create_row
    @eje = Eje.new


    if @eje.valid?
      @eje.save

      redirect_back(:fallback_location => "/ejes", :notice => "Eje created successfully.")
    else
      render("eje_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @eje = Eje.find(params.fetch("prefill_with_id"))

    render("eje_templates/edit_form.html.erb")
  end

  def update_row
    @eje = Eje.find(params.fetch("id_to_modify"))


    if @eje.valid?
      @eje.save

      redirect_to("/ejes/#{@eje.id}", :notice => "Eje updated successfully.")
    else
      render("eje_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @eje = Eje.find(params.fetch("id_to_remove"))

    @eje.destroy

    redirect_to("/ejes", :notice => "Eje deleted successfully.")
  end
end
