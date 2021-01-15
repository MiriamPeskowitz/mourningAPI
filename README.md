# README

#Mourning
A Rails API, final project for Flatiron Fullstack Software Engineering program. 

#User Stories 
A user wants to sign up to create a profile to mourn a person or several people they have lost recently -- whether it's a parent, aunt, cousin, friend, colleague, anyone. So many people are dying, and we miss them in so many ways, no matter what our relationship to them was. 
    -- user can sign up, login, logout with react-redux-thunk frontend
    -- user can make text entries
A user wants to visit the site's main page to see a fountain, a cascade of mourners, with pieces of info about them: their names, who they have lost, how they are feeling. A user can do this without signing up/logging in. 

# Next Features

A user can decide whether an entry is public or private, so that an entry can be seen only on a user's page, or in the general feed (if public).

A user can see a general feed of entries, creating an immediate sense of being surrounded by people who understand and care. 

A user can add entries that are text or images.

A user can sign up for a once-a-day email-reminder that invites them back to the app, where they can choose different options  

A user can invite friends to support them and see their entries, like Caringbridge.com. 

Possibly, a user can make friends on the site.

#Models
user and entry
serialized with fastjson_api
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
http://localhost:3001/api/v1/users
// 20210114225140
// http://localhost:3001/api/v1/users

{
  "data": [
    {
      "id": "18",
      "type": "user",
      "attributes": {
        "username": "Marita",
        "email": "marita@mail.com",
        "description": "I just lost my mom and my sister. I am grieving so hard. What will I do?",
        "password": null
      },
      "relationships": {
        "entries": {
          "data": [
            {
              "id": "5",
              "type": "entry"
            }
          ]
        }
      }
    },

#License
