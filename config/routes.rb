Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  get("/users", { :controller => "users", :action => "index" })

  get("/users/:path_username", { :controller => "users", :action => "show" })

  get("/update_user/:path_username", { :controller => "users", :action => "update_user" })

  get("/insert_user_record", { :controller => "users", :action => "insert_user" })

  get("/photos", { :controller => "photos", :action => "index" })

  get("/photos/:path_id", { :controller => "photos", :action => "show" })

  get("/delete_photo/:toast_id", { :controller => "photos", :action => "bali" })

  get("/insert_photo", { :controller => "photos", :action => "create" })

  get("/update_photo/:modify_id", { :controller => "photos", :action => "update" })

  get("/insert_comment_record", { :controller => "photos", :action => "insert_comment" })
end
