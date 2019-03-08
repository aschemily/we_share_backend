require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
UserGroup.destroy_all
Group.destroy_all
Topic.destroy_all
Favorite.destroy_all


Topic.create(topic_name: "Restaurants")
Topic.create(topic_name: "Movies")
Topic.create(topic_name: "Books")
Topic.create(topic_name: "Michael Scott Quotes")
Topic.create(topic_name: "Music")

20.times do
Favorite.create(title:Faker::Restaurant.name, image:'image', details:'details', topic_id: 1)
end

20.times do
Favorite.create(title:Faker::Movie.quote, image:'image', details:'details', topic_id: 2)
end

20.times do
  Favorite.create(title:Faker::Book.title, image:'image', details:'details', topic_id: 3)
end

20.times do
  Favorite.create(title:Faker::TvShows::MichaelScott.quote, image:'image', details:'details', topic_id: 4)
end

20.times do
  Favorite.create(title:Faker::Music.band, image:'image', details:'details', topic_id: 5)
end
