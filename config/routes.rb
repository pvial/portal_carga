Rails.application.routes.draw do
  # Routes for the Ejercicio resource:

  # CREATE
  get("/ejercicios/new", { :controller => "ejercicios", :action => "new_form" })
  post("/create_ejercicio", { :controller => "ejercicios", :action => "create_row" })

  # READ
  get("/ejercicios", { :controller => "ejercicios", :action => "index" })
  get("/ejercicios/:id_to_display", { :controller => "ejercicios", :action => "show" })

  # UPDATE
  get("/ejercicios/:prefill_with_id/edit", { :controller => "ejercicios", :action => "edit_form" })
  post("/update_ejercicio/:id_to_modify", { :controller => "ejercicios", :action => "update_row" })

  # DELETE
  get("/delete_ejercicio/:id_to_remove", { :controller => "ejercicios", :action => "destroy_row" })

  #------------------------------

  # Routes for the Contentido resource:

  # CREATE
  get("/contentidos/new", { :controller => "contentidos", :action => "new_form" })
  post("/create_contentido", { :controller => "contentidos", :action => "create_row" })

  # READ
  get("/contentidos", { :controller => "contentidos", :action => "index" })
  get("/contentidos/:id_to_display", { :controller => "contentidos", :action => "show" })

  # UPDATE
  get("/contentidos/:prefill_with_id/edit", { :controller => "contentidos", :action => "edit_form" })
  post("/update_contentido/:id_to_modify", { :controller => "contentidos", :action => "update_row" })

  # DELETE
  get("/delete_contentido/:id_to_remove", { :controller => "contentidos", :action => "destroy_row" })

  #------------------------------

  # Routes for the Pre ex resource:

  # CREATE
  get("/pre_exes/new", { :controller => "pre_exes", :action => "new_form" })
  post("/create_pre_ex", { :controller => "pre_exes", :action => "create_row" })

  # READ
  get("/pre_exes", { :controller => "pre_exes", :action => "index" })
  get("/pre_exes/:id_to_display", { :controller => "pre_exes", :action => "show" })

  # UPDATE
  get("/pre_exes/:prefill_with_id/edit", { :controller => "pre_exes", :action => "edit_form" })
  post("/update_pre_ex/:id_to_modify", { :controller => "pre_exes", :action => "update_row" })

  # DELETE
  get("/delete_pre_ex/:id_to_remove", { :controller => "pre_exes", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
