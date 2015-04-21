# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |user|
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.safe_email, name: Faker::Name.name)
end

20.times do |article|
  Article.create(title: Faker::Name.title, body: Faker::Hacker.say_something_smart, user_id: rand(1..10))
end

30.times do |comment|
  Comment.create(body: Faker::Hacker.say_something_smart, user_id: rand(1..10), article_id: rand(1..20))
end