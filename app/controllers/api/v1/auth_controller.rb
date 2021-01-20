class Api::V1::AuthController < ApplicationController

#  login => create a new session 
	def login
		@user = User.find_by(username: params[:auth][:username])	

		if @user && @user.authenticate(params[:auth][:password])	
	 
	 		session[:user_id] = @user.id

			current_user = UserSerializer.new(@user) 

			render json: current_user, status: :accepted
			
		else
			render json: {
				error: "Invalid credentials; Login didn't work", 
				status: :unathorized
			}
		end 
	end

# get_current_user is akin to auto_login
	def get_current_user
		if logged_in?
			render json: UserSerializer.new(current_user), status: :ok
		else
			render json: {
				error: "No one logged in yet.",
				status: :unathorized
			}
		end 
	end 


	def destroy
		session.clear
		render json: {
			notice: "Logged out"}, 
			status: :ok
	end
end 


# end 
	# .authenticate comes from bcrpyt 
# private
#     def authenticate_user
#       user_token = request.headers['X-USER-TOKEN']
#       if user_token
#         @user = User.find_by_token(user_token)
#         #Unauthorize if a user object is not returned
#         if @user.nil?
#           return unauthorize
#         end
#       else
#         return unauthorize
#       end
#     end

#     def unauthorize
#       head status: :unauthorized
#       return false
#     end
# end