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

User_card.destroy_all
User.destroy_all
Card.destroy_all
Teamcolor.destroy_all

file = File.read "app/assets/json/allcards.json"
jsonData = JSON.parse(file)

jsonData.each do |data|
    card = Card.create(layout: data["layout"],
                       name: data["name"],
                       power: data["power"],
                       toughness:data["toughness"]  )    
end

10.times do
    teamcolor = Teamcolor.create(color: Fake::Color.unique.name)

    users_per_teamcolor = Faker::Number.number(2).to_i

    users_per_teamcolor.times do
        teamcolor.user.create(name: Faker::Name.name,
                              username: Faker::Funny_name.unique.name ,
                              age: Faker::Number.number(2).to_i,
                              user_level: Faker::Number.number(2).to_i)
      end
end

20.times do
    user = User.all.sample
    card = Card.all.sammple
    User_card.create(user: user, card: card)
end



