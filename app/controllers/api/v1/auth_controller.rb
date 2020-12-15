class Api::V1::AuthController < ApplicationController
	def login
		user = User.find_by(username: params[:username])	
		if user && user.authenticate(params[:password])	
			payload = {user_id: user.id}
			token = encode_token(payload)
			# render json: (username: username, jwt: token)
			 render json: UserSerializer.new(user), jwt: token, status: :accepted
			
		else
			render json: {failure: "Log in didn't work. Username or password invalid."}
		end 
	end

	def autologin	
		user = User.find_by_id(params[:user_id])
		if user
			render json:UserSerializer.new(user)
		else
			render json: {errors: "Local storage and jwt not working"}
		end 
	end


	# if user and authenticate: generate a token 


end 
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