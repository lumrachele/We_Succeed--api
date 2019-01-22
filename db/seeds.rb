# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

u1 = User.create(name: "Satya", email: "satya")
u2 = User.create(name: "Tony", email: "tony")
u3 = User.create(name: "Rachel", email: "rachel")

Activity.create(name: "workout")
Activity.create(name: "meal")
Activity.create(name: "mindfulness")

Goal.create(name: "vamos a la playa", value: 20, user_id: 1, reached: true)
Goal.create(name: "vamos a la costco", value: 30, user_id: 1)
Goal.create(name: "take over WeWork", value: 50, user_id: 1, reached: true)
Goal.create(name: "vamos a la costco", value: 30, user_id: 2)
Goal.create(name: "take over WeWork", value: 50, user_id: 2, reached: true)
Goal.create(name: "vamos a la costco", value: 40, user_id: 3)
Goal.create(name: "take over WeWork", value: 50, user_id: 3, reached: true)
Goal.create(name: "take over WeWork", value: 50, user_id: 3, reached: true)

# make new UserActivity to make the reached goals met?
UserActivity.create(user_id: 1, activity_id: 1, goal_id: 2,  points: 6, note: "squatzzz" )
UserActivity.create(user_id: 1, activity_id: 2, goal_id: 2, points: 6, note: "zzzsalmonzzz" )
UserActivity.create(user_id: 1, activity_id: 3, goal_id: 2, points: 6, note: "meditatezzz" )
UserActivity.create(user_id: 2, activity_id: 2, goal_id: 4, points: 7, note: "salad" )
UserActivity.create(user_id: 2, activity_id: 2, goal_id: 4, points: 1, note: "soupz" )
UserActivity.create(user_id: 2, activity_id: 2, goal_id: 4, points: 1, note: "some chicken" )
UserActivity.create(user_id: 3, activity_id: 3, goal_id: 6, points: 8, note: "said hullo" )
UserActivity.create(user_id: 3, activity_id: 3, goal_id: 6, points: 3, note: "said hiiii" )
UserActivity.create(user_id: 3, activity_id: 3, goal_id: 6, points: 4, note: "said heyyy" )
UserActivity.create(user_id: 3, activity_id: 3, goal_id: 6, points: 6, note: "said byeeee" )
