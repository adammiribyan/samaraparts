Samaraparts::Application.routes.draw do	
  get "signup" => "users#new", :as => :signup
	resources :users  
  root :to => "welcome#index"

end
