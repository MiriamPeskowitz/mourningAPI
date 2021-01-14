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

	def destroy

		session.clear
		render json: {
			notice: "Logged out"}, 
			status: :ok
	end
end 

# where do I call autologin? Also, howard calls it get_current_user? What's the most descriptive name for it? 
	# def autologin	
	# 	if logged_in?
	# 		render json: {
	# 			user: UserSerializer.new(current_user)
	# 			}, status: :ok

	# 	else
	# 		render json: {error: "No current user"}
	# 	end 
	# end


	# # if user and authenticate: generate a token 


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