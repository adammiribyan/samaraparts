Samaraparts::Application.routes.draw do
	# Authentication
  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get "signup" => "users#new", :as => "signup"  
  
	resources :users  
	resources :sessions
	resources :requests
	resources :feedbacks

	root :to => "welcome#index"
	
end
