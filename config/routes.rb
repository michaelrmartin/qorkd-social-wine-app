Rails.application.routes.draw do
  
  # Wine routes
  get "/wines" => "wines#index"
  post "/wines" => "wines#create"
  get "/wines/:id" => "wines#show"
  patch "/wines/:id" => "wines#update"
  delete "/wines/:id" => "wines#destroy"

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


  # User Profile routes
  get "/user_profiles" => "user_profiles#index"
  post "/user_profiles" => "user_profiles#create"
  get "/user_profiles/:id" => "user_profiles#show"
  patch "/user_profiles/:id" => "user_profiles#update"
  delete "/user_profiles/:id" => "user_profiles#destroy"

  # Session routes
  post "/sessions" => "sessions#create"
  
  # Twilio route
  post "/sendtext" => "twilio#create"
  
end
