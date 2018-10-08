# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
require 'json'
require 'pp'

UserCard.destroy_all
User.destroy_all
Card.destroy_all
Teamcolor.destroy_all

file = File.read "app/assets/json/allcards.json"
jsonData = JSON.parse(file)

jsonData.each do |card_data|
    card_data.each do |data|
        card = Card.create(layout: data['layout'],
                               name: data['name'],
                               power: data['power'],
                               toughness:data['toughness'])  
            
    end  
end

10.times do
    teamcolor = Teamcolor.create(color: Faker::Color.unique.color_name)

    users_per_teamcolor = Faker::Number.number(2).to_i

    10.times do
        teamcolor.users.create(name: Faker::Name.name,
                              username: Faker::Internet.email,
                              age: Faker::Number.number(2).to_i,
                              user_level: Faker::Number.number(2).to_i)
      end
end

puts "Total of Teamcolor: #{Teamcolor.count}"
puts "Total of Users: #{User.count}"
puts "Total of Card: #{Card.count}"

10.times do
    user = User.all.sample
    card = Card.all.sample
    UserCard.create(user: user, card: card)
end



