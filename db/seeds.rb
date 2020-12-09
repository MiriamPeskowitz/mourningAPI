 

 User.delete_all
 Entry.delete_all

# users 
marita = User.create!(username: "Marita", email: "marita@mail.com",password: "xoxoxo" , description: "I just lost my mom and my sister. I am grieving so hard. What will I do?")
leo = User.create!(username: "Leo", email: "leo@mail.com", password: "xoxoxo" ,description: "My dad was everything to me. He died so suddenly.")
elder = User.create!(username: "Elder", email: "elder@mail.com", password: "xoxoxo" ,description: "My niece. She was 31, and the light of everyone's life. No family gathering will ever be the same.")
yori = User.create!(username: "Yori", email: "yori@mail.com", password: "xoxoxo" ,description: "My fiance. I've lost everything, our future, their family. How can this even be happening?")

# entries
loss = Entry.create!(title: "Monday", content: "Hard day ahead, but I made it out of bed.", public: true, user_id: marita.id )

sadness = Entry.create!(title: "Monday afternoon", content: "Getting through the day, not easy, tears in my eyes every so often", public: true, user_id: leo.id )

grief = Entry.create!(title: "Monday night", content: "Couldn't get out of bed this morning, too much grief. Just a week ago, I can't even believe it's true", public: true, user_id: elder.id )

disbelief = Entry.create!(title: "Monday evening", content: "It's like I think it didn't happen, and then it hits me that they're gone.", public: true, user_id: yori.id )


