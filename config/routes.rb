Skooah::Application.routes.draw do
  devise_for :users
  
  resources :session

  get "home/index"

  root :to => "home#index"
end
