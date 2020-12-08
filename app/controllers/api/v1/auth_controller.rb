class Api::V1::AuthController < ApplicationController
	def login
		user = User.find_by(username: params[:user][:username])	
		if user && user.authenticate(params[:user][:password])	
			payload = {user_id: user.id}
			render json: (username: username)
			# token = encode_token(payload)
			# render json: (user: user, jwt: token)
		else
			render json: {failure: "Log in failed! Username or password invalid!"}
		end 
	end

	private
		def authenticate_user
		end 

end 

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