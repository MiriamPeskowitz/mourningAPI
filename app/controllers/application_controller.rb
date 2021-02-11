class ApplicationController < ActionController::API
 include ::ActionController::Cookies

	def current_user
		User.find_by(id: session[:user_id])
	end 

	def logged_in?
		!!current_user
	end 

	def logged_out?
		!current_user
	end 
end 


  # def get_current_user
  #   jwt_token = request.headers['HTTP_AUTHORIZATION'] # .gsub('Bearer ', '')

  #   if jwt_token
  #     user_info = Auth.decode(jwt_token)
  #     user ||= User.find(user_info['user_id'])
  #   end
    
  #   user
  # end



# 	def current_user
# 	jwt_token = request.headers['HTTP_AUTHORIZATION']

# 	if jwt_token
# 		user_info = Auth.decode(jwt_token)
# 		user || = User.find(user_info['user_id'])
# 	end
# 	user 
# end


# 	def encode_token(payload)
# 		JWT.encode(payload, ENV['JWT_TOKEN_SECRET'])
# 	end

	# def decode_token_for_user_id
	# 	token = request.headers["Authorization"]
	# 	secret = ENV['JWT_TOKEN_SECRET']
	# 	JWT.decode(token, secret)[0]["id"]
	# end 
