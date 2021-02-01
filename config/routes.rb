Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do
    	resources :users
    	resources :entries
   		
   		post "/login", to: "auth#login"  
      post "/signup", to: "users#create"
   		get "/get_current_user", to: "auth#get_current_user"		
  	  delete "/logout", to: "auth#destroy"
    end 
  end
end
 