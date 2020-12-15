Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do
    	resources :users, only: [:index, :show, :create, :destroy, :update]
    	resources :entries, only: [:index, :show, :create, :destroy, :update]
   		post "/login" => "auth#login"  
   		post "/autologin" => "auth#autologin"		
  	end 
  end
end
# get "/auto_login", to: "auth#auto_login" # for auto-login
   		# get "/user_is_authed", to: "auth#user_is_authed"
   			# post "/signUp", to: "auth@signup"  #is the same as users:create 
