# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# (ANDY) created trails and messages for test of message section
trail1 = BikeTrail.create(name: "trail 1", distance: 1 ,counter_location: "counter_location 1")
trail2 = BikeTrail.create(name: "trail 2", distance: 2 ,counter_location: "counter_location 2")
trail3 = BikeTrail.create(name: "trail 3", distance: 3 ,counter_location: "counter_location 3")

message1 = Message.create(user_name: "user1", content: "content1", bike_trail: trail1)
message2 = Message.create(user_name: "user2", content: "content2", bike_trail: trail2)
message3 = Message.create(user_name: "user3", content: "content3", bike_trail: trail3)