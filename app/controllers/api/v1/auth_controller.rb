class Api::V1::AuthController < ApplicationController

#  login => create a new session 
	def login
		@user = User.find_by(username: params[:auth][:username])	

		if @user && @user.authenticate(params[:auth][:password])	
	 		session[:user_id] = @user.id
			current_user = UserSerializer.new(@user) 
			render json: current_user, status: :accepted
		else
			response = {
				error: "Invalid credentials; Login didn't work", 
				status: :unathorized
			}
			render json: response
		end 
	end

# autologin
	def get_current_user
		if logged_in?
			render json: UserSerializer.new(current_user)
		else
			render json: {
				error: "No one logged in yet.",
				status: :unathorized
			}
		end 
	end 

# logout
	def destroy
		session.clear
		render json: {
			notice: "Logged out"}, 
			status: :ok
	end
end 
