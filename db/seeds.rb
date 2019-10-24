# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

10.times do
	city = City.create!(city_name: Faker::Address.city)
end

20.times do
	dog = Dog.create!(dogname: Faker::Superhero.name,city_id: City.all.sample.id)
end

20.times do
	dogsitter = Dogsitter.create!(name: Faker::Movies::HarryPotter.character,city_id: City.all.sample.id)
end

40.times do
	stroll = Stroll.create!(date: Faker::Time.forward(days: 50, period: :morning, format: :short), dog_id: Dog.all.sample.id , dogsitter_id: Dogsitter.all.sample.id, city_id: City.all.sample.id)
end
