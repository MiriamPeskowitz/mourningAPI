1. need more on users: username, password, password_confirmation, firstname, lastname, description. How to add? By new migration. 
-- rails g migration AddCategoriesToUser username, password, password_confirmation, lastname

2. need serializers. fastJson_api-- add gem DONE. create serializers 
	User -DONE, Entry -- DONE, change User controller -DONE, change Entry controller START WITH THIS 

3. Auth
		-- add has_secure_password to user model 

4. Fix the routes, they seem weird 
￼
