# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "user"
require "city"
require "faker"

User.destroy_all
City.destroy_all
#10 cities
10.times do
	City.create!(
		name: Faker::Address.city,
		zip_code: Faker::Address.zip_code)
end
puts "10 villes ont été créées"

#10 Users
10.times do 
	User.create!(
		first_name: Faker::Name.name.first,
		last_name: Faker::Name.last_name,
		description: Faker::Lorem.sentence,
		email: Faker::Internet.email,
		age: rand(18..50),
		city: City.all.sample
	)
end
puts "10 users ont été créés"

10.times do 
	Gossip.create!(
		title: Faker::Movie.title,
		content: Faker::Lorem.sentence, 
		tag: Tag.all.simple
		)
end
puts "10 gossips ont été créés"

10.times do 
	Tag.create!(
		title: Faker::Movie.genre,
		)
end
puts "10 tags ont été créés"

10.times do 
	Tag.create!(
		title: Faker::Movie.genre,
		)
end
puts "10 tags ont été créés"


