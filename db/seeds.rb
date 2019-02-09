# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
100.times do |i|
	City.create(name: Faker::Address.city)
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Shakespeare.romeo_and_juliet_quote, email: Faker::Internet.email, age: 1 + rand(100), city_id: 1 +  rand(City.all.length), password: "one")
	Gossip.create(title: Faker::Lorem.word, content: Faker::Lorem.sentence, user_id:  1 + rand(User.all.length))
	Comment.create(content: Faker::Lorem.sentence, user_id: 1 + rand(User.all.length), gossip_id: 1 + rand(Gossip.all.length))
end