Rails.application.routes.draw do
  root :to => "pre_exes#index"
  devise_for :aprobadors
  # Routes for the Aprobador resource:

  # READ
  get("/aprobadors", { :controller => "aprobadors", :action => "index" })
  get("/aprobadors/:id_to_display", { :controller => "aprobadors", :action => "show" })

  #------------------------------

  devise_for :creadors
  # Routes for the Creador resource:

  # READ
  get("/creadors", { :controller => "creadors", :action => "index" })
  get("/creadors/:id_to_display", { :controller => "creadors", :action => "show" })

  #------------------------------

  # Routes for the Molde resource:

  # CREATE
  get("/moldes/new", { :controller => "moldes", :action => "new_form" })
  post("/create_molde", { :controller => "moldes", :action => "create_row" })

  # READ
  get("/moldes", { :controller => "moldes", :action => "index" })
  get("/moldes/:id_to_display", { :controller => "moldes", :action => "show" })

  # UPDATE
  get("/moldes/:prefill_with_id/edit", { :controller => "moldes", :action => "edit_form" })
  post("/update_molde/:id_to_modify", { :controller => "moldes", :action => "update_row" })

  # DELETE
  get("/delete_molde/:id_to_remove", { :controller => "moldes", :action => "destroy_row" })

  #------------------------------

  # Routes for the Eje resource:

  # CREATE
  get("/ejes/new", { :controller => "ejes", :action => "new_form" })
  post("/create_eje", { :controller => "ejes", :action => "create_row" })

  # READ
  get("/ejes", { :controller => "ejes", :action => "index" })
  get("/ejes/:id_to_display", { :controller => "ejes", :action => "show" })

  # UPDATE
  get("/ejes/:prefill_with_id/edit", { :controller => "ejes", :action => "edit_form" })
  post("/update_eje/:id_to_modify", { :controller => "ejes", :action => "update_row" })

  # DELETE
  get("/delete_eje/:id_to_remove", { :controller => "ejes", :action => "destroy_row" })

  #------------------------------

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
