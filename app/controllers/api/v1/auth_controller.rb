class Api::V1::AuthController < ApplicationController

	def login
		@user = User.find_by(username: params[:auth][:username])	
		if @user && @user.authenticate(params[:auth][:password])	
	 		session[:user_id] = @user.id
			current_user = UserSerializer.new(@user) 
			render json: current_user, status: :accepted
		else
			render json: { error: "Invalid credentials; Login didn't work"}, status: :unathorized

		end 
	end

	def get_current_user
		if logged_in?
			render json: UserSerializer.new(current_user), status: :ok
		else
			render json: { error: "No one logged in yet."}, status: :unathorized
		end 
	end 

	def destroy
		session.clear
		if logged_out?
			render json: { notice: "Server says: session cleared. user logged out"}, status: :ok
		else
			render json: { notice: "not logged out"}, status: :no_content
		end
	end
end 
# def destroy
# 		session.clear
# 		render json: { notice: "Server says: session cleared. user logged out"}, status: :ok
# 	end

