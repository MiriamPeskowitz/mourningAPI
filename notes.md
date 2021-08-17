1. DONE need more on users: username, password, password_confirmation, firstname, lastname, description. How to add? By new migration. 
-- rails g migration AddCategoriesToUser username, password, password_confirmation, lastname

2. DONE need serializers. fastJson_api-- add gem DONE. create serializers 
	User -DONE, Entry -- DONE, change User controller -DONE, change Entry controller DONE

3. DONE DO THIS SECOND Auth
		-- add has_secure_password to user model 
		-- create users, sign-in, login-in, etc, and a profile page 

4. DONE Fix the routes, they seem weird, too nested, seems like overkill with a serializer. Also, think about how to do routes, when also using react router? 


5.DONE  DO THIS FIRST Create the front end with the folder from testFinalRailsAPi
 -- mourning-front-end-2020
 
6. DONE Make wishlist of frontend features. 

<><><><><><><>><<<<<>
August 2021: 
1. n + 1 queries. Look at n+1 issues in server log. Read about it, especially as
I prepare to add more models and nested calls. 

2. As user.entries gets longer, and I want to send over just a few, with MORE button, THINK ABOUT whether to do that from the backend (cons: more server calls), or from the frontend(data is already there, but took longer to get there ). Research pros and cons. 

3. 


￼
