# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts ("Creating Users....")
xhim = User.create!( email:"xhimaravolta@gmail.com", first_name:"xhim", last_name:"Aravolta", password:"Password")
blea = User.create!( email:"bleadravolta@gmail.com", first_name:"Blea", last_name:"Lravolta", password:"Password")
altea = User.create!( email:"alteabravolta@gmail.com", first_name:"Altea", last_name:"Bravolta", password:"Password")
milea = User.create!( email:"mileakravolta@gmail.com", first_name:"Milea", last_name:"Kravolta", password:"Password")
puts ("Created Users....")

puts "Creating Reviews...."
reviews = []
review5 = Review.create!( content: "Unbelieveble", rating: 5, user_id: 11 )
review6 = Review.create!( content: "Wasted", rating: 2, user_id: 12 )
review7 = Review.create!( content: "Good Effort", rating: 3, user_id: 13 )
review8 = Review.create!( content: "Looser", rating: 1, user_id: 14 )
reviews << review5
reviews << review6
reviews << review7
reviews << review8
puts reviews


reviews.all.each do |review|
  puts "Created review of user #{review.user.first_name}"
end
