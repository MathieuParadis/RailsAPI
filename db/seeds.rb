# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = []
articles = []

require 'faker'

5.times do |n|
  users << u = User.create(email: Faker::Internet.email, password: "CaputDraconis")
end

30.times do |n|
  articles << a = Article.create(title: Faker::Book.title, content: Faker::Lorem.paragraph(sentence_count: 2), user_id: users.sample.id)
end