Rails.application.routes.draw do
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
