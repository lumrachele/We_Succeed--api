# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all

u1 = User.create(name: "Satya", email: "satya@fake.com")
u2 = User.create(name: "Tony", email: "OGlum@fake.com")
u3 = User.create(name: "Rachel", email: "lum2@fake.com")

Activity.create(name: "workout")

Activity.create(name: "meal")

Activity.create(name: "mindfulness")


UserActivity.create(user_id: 1, activity_id: 1, points: 6, note: "squatzzz" )
UserActivity.create(user_id: 1, activity_id: 2, points: 6, note: "zzzsalmonzzz" )
UserActivity.create(user_id: 1, activity_id: 3, points: 6, note: "meditatezzz" )
UserActivity.create(user_id: 2, activity_id: 2, points: 7, note: "salad" )
UserActivity.create(user_id: 3, activity_id: 3, points: 8, note: "said hullo" )

Goal.create(name: "vamos a la playa", value: 20, user_id: 1, reached: true)
Goal.create(name: "vamos a la costco", value: 30, user_id: 2)
Goal.create(name: "take over WeWork", value: 50, user_id: 3)
