Rails.application.routes.draw do
#<<<<<<< HEAD
  #devise_for :users
  get '/', to: "welcome#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
  }
end
