class ApplicationController < ActionController::API

	def get_current_user
		jwt_token = request.headers['HTTP_AUTHORIZATION']

		if jwt_token
			user_info = Auth.decode(jwt_token)
			user ||= User.find(user_info['user_id'])
		end 
		user
	end 
end

# clarify what the jwt code is doing 
