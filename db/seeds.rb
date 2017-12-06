# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{
  name: "NYCDA", email: "123123@gmail.com", bio: "Cool School owned by people with more money than us.", password: "123123"
  },{
  name: "Dallas Walker Peterson", email: "53N531@gmail.com", bio: "Hello, I'm ${Cuter than you}.", password: "123123"
  },{
  name: "Google.inc", email: "Google@gmail.com", bio: "We own you.", password: "123123"
  },{
  name: "Patrick Colleton", email: "hi@iluvbeez.com", bio: "I'm edgy, pay attention to me.", password: "123123"
  }])

submissions = Submission.create([{
  title: "Lolwut", description: "k", user_id: 2, proposal_id: 1
  },
{
  title: "<p></p>", description: "Helo Wurld", user_id: 4, proposal_id: 2
    }])

proposals = Proposal.create([{
  name: "Make us a terrible website", short_desc: "Honestly, the worse the better", fulldesc: "Go wild. We're talking full-on Homer Simpson 90's level shit. Surprise us.", category: "Web Design", location: "New York", timelimit: 2592000000, user_id: 1
  },
{
  name: "Procedurally-generated Animated Ascii Pokemon Gifs", short_desc: "Let's see you fuckers pull this off", fulldesc: "We're talkin' all 700 or however many of these fuckers there are at this point, even the stupid keychain one. Bonus points for adult content.", category: "Art Assets (minor)", location: "Internet", timelimit: 604800000, user_id: 3
  }])
