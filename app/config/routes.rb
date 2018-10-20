Rails.application.routes.draw do
#<<<<<<< HEAD
  devise_for :users
#=======
  get '/', to: "welcome#show"
#>>>>>>> 1332681595a73e4197e5fa45e5435ece9a46d0ae
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
