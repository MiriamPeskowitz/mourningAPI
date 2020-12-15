class ApplicationController < ActionController::API
# four helper methods

	def current_user
		begin
			current_user ||= user.find(decode_token_for_user_id)
		rescue
			return nil
		end 
	end 

	def logged_in?
		!!current_user
	end 

	def generate_token(payload)
		JWT.encode(payload, ENV['JWT_TOKEN_SECRET'])
	end

	def decode_token_for_user_id
		token = request.headers["Authorization"]
		secret = ENV['JWT_TOKEN_SECRET']
		JWT.decode(token, secret)[0]["id"]
	end 

end


