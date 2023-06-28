Rails.application.routes.draw do
  
  # Wine routes
  resources :wines

  # Post routes
  resources :posts
  
  # User routes
  resources :users

  # Session routes
  resources :sessions, only: %i[create]

  # Follow routes
  resources :follows, only: %i[index create show]
  
  # Twilio route
  resources :twilio, only: %i[create]

end
