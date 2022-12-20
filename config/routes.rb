Rails.application.routes.draw do
  
  # Wine routes
  get "/wines" => "wines#index"
  post "/wines" => "wines#create"
  get "/wines/:id" => "wines#show"
  patch "/wines/:id" => "wines#update"
  delete "/wines/:id" => "wines#destroy"
  
  #User routes
  post "/users" => "users#create"

  # Session routes
  post "/sessions" => "sessions#create"
  
  # Twilio route
  post "/sendtext" => "twilio#create"
  
end
