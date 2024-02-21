# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

# Faker::Config.locale='fr'
# 5.times do
#   u = User.create!(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, email:Faker::Internet.email(domain: 'yopmail.com'), description:Faker::Movies::Hobbit.character,password:"abc123")
# end
  u1 = User.create(first_name:"naruto",last_name:"usumaki",email:"na_ru_to619@hotmail.fr",description:"J'aime les ramens de Konoha",password:"abc123")
  u2 = User.create(first_name:"lolo2",last_name:"koko2",email:"lolo2@yopmail.com",description:"jaime les chats",password:"abc123")
  u3 = User.create(first_name:"lolo3",last_name:"koko3",email:"lolo3@yopmail.com",description:"jaime les chats",password:"abc123")
  # u4 = User.create(first_name:"lolo4",last_name:"koko4",email:"lolo4@yopmail.com",description:"jaime les chats",password:"abc123")
  # u5 = User.create(first_name:"lolo5",last_name:"koko5",email:"lolo5@yopmail.com",description:"jaime les chats",password:"abc123")


  e1 = Event.create(start_date:"20/03/2024",duration:3600,title:"doctor",description:"Consultation pour tout type de probleme",price:25,location:"Paris", admin: u2)
  e2 = Event.create(start_date:"29/03/2024",duration:86400,title:"Fin fullstack",description:"Feter la fin des 3 mois intense de formation fullstack",price:200,location:"Toulouse", admin: u1)
  e3 = Event.create(start_date:"20/07/2024",duration:259200,title:"concert",description:"Concert de rock avec plein d'artists",price:200,location:"Lisbonne", admin: u1)
  e4 = Event.create(start_date:"2024-02-21 18:00:00",duration:7200,title:"musculation",description:"Faire un peu de sport pour se changer les idées",price:15,location:"Paris", admin: u3)
  e4 = Event.create(start_date:"2025-02-20 18:00:00",duration:6400,title:"apero",description:"Apero payant pour les gens qui ont soif",price:20,location:"Paris", admin: u1)