Skooah::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :session
  resources :authors

  match "/publications/manage" => "publications#manage", :as => :manage_publications
  resources :publications

  match 'about' => 'content#about'
  match 'terms-of-service' => 'content#tos'

  root :to => "content#home"
end
