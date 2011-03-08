Samaraparts::Application.routes.draw do	
  get "requests/new"

  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get "signup" => "users#new", :as => "signup"  
  
	resources :users  
	resources :sessions
	resources :requests

	root :to => "welcome#index"
	
end
