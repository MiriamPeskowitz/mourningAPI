
 
 user = ["Rob", "Kisha", "Lulu", "Leo"]

 user.each{ |user| User.create(name: user, description: "I am #{user}. So glad to be here")}

# uses the "sadness ipsum lorem" I created

entry = ["anticipation future exhausted sick panic", "confusion human empty afraid", "dazed stunned", "crushed restless "]

entry.each{ |entry| Entry.create( title: entry, content: "I'm feeling #{entry}. Anyone else feel this way?", user_id: 19, public: "yes")}

entry = ["shock", "empty", "angry", "confused and sad"]

entry.each{ |entry| Entry.create( title: entry, content: "I'm feeling #{entry}. Anyone else feel this way?", user_id: 20, public: "yes")}