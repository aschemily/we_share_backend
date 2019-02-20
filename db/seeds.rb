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


User.create(username:"John Smith", email:"jsmith@gmail.com", password:"password")
User.create(username:"Mary Jo", email:"maryjo@gmail.com", password:"password")
User.create(username:"Natalie Dot", email:"natdot@gmail.com", password:"password")
User.create(username:"Billy Jean", email:"billy@gmail.com", password:"password")

# UserGroup.create(user_id: 1, group_id: 1)
# UserGroup.create(user_id: 2, group_id: 1)
# UserGroup.create(user_id: 3, group_id: 1)
#
# UserGroup.create(user_id: 4, group_id: 2)
# UserGroup.create(user_id: 1, group_id: 2)

Group.create(group_name: "group name test")
Group.create(group_name: "testing group")

Favorite.create(title:"test restaurant", image:"http://www.orseu-concours.com/76-292-thickbox/test-epso-de-raisonnement-numerique-4-fr.jpg", details: "testing details", topic_id: 1)
Favorite.create(title:"favorite test restaurant 2", image:"http://www.orseu-concours.com/76-292-thickbox/test-epso-de-raisonnement-numerique-4-fr.jpg", details: "testing details", topic_id: 1)
Favorite.create(title:"test movie", image:"http://www.orseu-concours.com/76-292-thickbox/test-epso-de-raisonnement-numerique-4-fr.jpg", details: "testing details", topic_id: 2)
Favorite.create(title:"test second movie", image:"http://www.orseu-concours.com/76-292-thickbox/test-epso-de-raisonnement-numerique-4-fr.jpg", details: "testing details", topic_id: 2)

Topic.create(topic_name: "Restaurants")
Topic.create(topic_name: "Movies")

# UserFave.create(user_id: 1, favorite_id: 1)
# UserFave.create(user_id: 1, favorite_id: 3)
#
# UserFave.create(user_id: 2, favorite_id: 3)
#
# UserFave.create(user_id: 3, favorite_id: 4)
# UserFave.create(user_id: 3, favorite_id: 2)
#
# UserFave.create(user_id: 4, favorite_id: 4)


# create_table "favorites", force: :cascade do |t|
#   t.string "title"
#   t.string "image"
#   t.string "details"
#   t.integer "topic_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "groups", force: :cascade do |t|
#   t.string "group_name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "topics", force: :cascade do |t|
#   t.string "topic_name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "user_faves", force: :cascade do |t|
#   t.integer "user_id"
#   t.integer "favorite_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "user_groups", force: :cascade do |t|
#   t.integer "user_id"
#   t.integer "group_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "users", force: :cascade do |t|
#   t.string "username"
#   t.string "email"
#   t.string "password"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
