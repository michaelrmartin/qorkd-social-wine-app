Rails.application.routes.draw do
  
  # Wine routes

  resources :wines

   # Post routes
   get "/posts" => "posts#index"
   post "/posts" => "posts#create"
   get "/posts/:id" => "posts#show"
   patch "/posts/:id" => "posts#update"
   delete "/posts/:id" => "posts#destroy"
  
  # User routes
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  # Session routes
  post "/sessions" => "sessions#create"
  
  # Twilio route
  post "/sendtext" => "twilio#create"

  # Follow routes
  get "/follows" => "follows#index"
  post "/follows" => "follows#create"
  delete "follows/:id" => "follows#destroy"

end
