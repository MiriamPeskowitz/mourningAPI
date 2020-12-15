# README

#Test Api to Prepare for Final Project 


#issues
Should there be two models: user and entry, or should the user model have an attribute that is entries
(id: 17)
name: Rob
description: "I am glad to be here"
entries: {
  (id: x)
  title: "Tuesday",
  content: "Good to be here",
  public: "yes"
  user_id: 17
  }
This would definitely be the object, and the way to set up a form, but would the data still be kept in two separate models, I'm thinking? 

Also, why does http://localhost:3001/api/v1/users/18/entries.json
get an error, if the route shows up in rake routes? 
    error is load_interlock (Def: Execute the supplied block while holding an exclusive lock, preventing any other thread from being inside a run_interlock block at the same time.)

After setting up the API, how to start with the front end? 
  

#User Stories

A user can sign up (fill out form, her data)(create backend, create forms through react)

A user can make (text) entries

A user can decide whether an entry is public or private

A user can enter an email (authentication is a later phase)

An entry can be seen only on a user's page, or in the general feed (if public).
 
For MVP, just add an antry. 

A user can see a general feed of entries, creating an immediate sense of being surrounded by people who understand and care. This feed is an API from the class/model Entries (index/displayed in react)

A user can click on one entry in the list to see the profile and other entries related to it. Card within a card 

A user can see in the URL three different routes: home, profile, index (react-routes)



#Next phase features:

A user can sign up for a once-a-day email-reminder, that invites them back to the app, where they can choose different options-- by pressing 1 of 3 buttons. Options are held in an API--  

A user can invite friends to support them and see their entries, like Caringbridge. (Or a user can make friends on the site.)

A user can add entries that are text or images
