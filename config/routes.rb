Skooah::Application.routes.draw do
  devise_for :users
  
  resources :session
  
  match 'about' => 'content#about'
  match 'terms-of-service' => 'content#tos'

  #used to view one author's information
  match 'authors/:id' => 'author_profiles#show', :as => "author_profile"

  #used to view a list of authors, later on for search
  #but for now just so I have somehwere to access them all
  match 'authors' => 'author_profiles#index', :as => "author_profiles"

  root :to => "home#index"
end
