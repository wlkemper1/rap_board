Rails.application.routes.draw do
  # Routes for the Friend_request resource:
  # CREATE
  get "/friend_requests/new", :controller => "friend_requests", :action => "new"
  post "/create_friend_request", :controller => "friend_requests", :action => "create"

  # READ
  get "/friend_requests", :controller => "friend_requests", :action => "index"
  get "/friend_requests/:id", :controller => "friend_requests", :action => "show"

  # UPDATE
  get "/friend_requests/:id/edit", :controller => "friend_requests", :action => "edit"
  post "/update_friend_request/:id", :controller => "friend_requests", :action => "update"

  # DELETE
  get "/delete_friend_request/:id", :controller => "friend_requests", :action => "destroy"
  #------------------------------

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Producer resource:
  # CREATE
  get "/producers/new", :controller => "producers", :action => "new"
  post "/create_producer", :controller => "producers", :action => "create"

  # READ
  get "/producers", :controller => "producers", :action => "index"
  get "/producers/:id", :controller => "producers", :action => "show"

  # UPDATE
  get "/producers/:id/edit", :controller => "producers", :action => "edit"
  post "/update_producer/:id", :controller => "producers", :action => "update"

  # DELETE
  get "/delete_producer/:id", :controller => "producers", :action => "destroy"
  #------------------------------

  # Routes for the Rapper resource:
  # CREATE
  get "/rappers/new", :controller => "rappers", :action => "new"
  post "/create_rapper", :controller => "rappers", :action => "create"

  # READ
  get "/rappers", :controller => "rappers", :action => "index"
  get "/rappers/:id", :controller => "rappers", :action => "show"

  # UPDATE
  get "/rappers/:id/edit", :controller => "rappers", :action => "edit"
  post "/update_rapper/:id", :controller => "rappers", :action => "update"

  # DELETE
  get "/delete_rapper/:id", :controller => "rappers", :action => "destroy"
  #------------------------------

  # Routes for the Song resource:
  # CREATE
  get "/songs/new", :controller => "songs", :action => "new"
  post "/create_song", :controller => "songs", :action => "create"

  # READ
  get "/songs", :controller => "songs", :action => "index"
  get "/songs/:id", :controller => "songs", :action => "show"

  # UPDATE
  get "/songs/:id/edit", :controller => "songs", :action => "edit"
  post "/update_song/:id", :controller => "songs", :action => "update"

  # DELETE
  get "/delete_song/:id", :controller => "songs", :action => "destroy"
  #------------------------------

  devise_for :users
  root to: "songs#index"

  get "/my_likes", :controller => "songs", :action => "my_likes"
  get "/my_timeline", :controller => "songs", :action => "my_likes"

  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
