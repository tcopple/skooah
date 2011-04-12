Skooah::Application.routes.draw do
  resources :authors

  devise_for :users
  
  resources :session
  
  match 'about' => 'content#about'
  match 'terms-of-service' => 'content#tos'

  root :to => "home#index"
end
