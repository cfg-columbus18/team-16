Rails.application.routes.draw do

  # Chat is visible at /chats
  resources :chats

  get '/globalchat', to: "global_chats#index"
  resources :global_chats
  
  get '/matches', to: "matches#find"

  get '/user', to: "user#show"

  get '/', to: "welcome#index"

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
  }

  get '/about', to: "about#show"

  #Login page
  # /users/login

  #Profile page
  # /user

  #Chat page
  # /chat

  #Match view page
  # /matches

  #About page
  # /about
end
