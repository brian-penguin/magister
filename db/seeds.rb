# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.first_or_create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.first_or_create!(name: "Luke", movie: movies.first)
#

user = User.first_or_create!(email: "hello@example.com", password: "example123")

col = Collection.first_or_create!(user: user, name: "my favorite shit")
Collection.first_or_create!(user: user, name: "shit")

Record.first_or_create!(name: "thing1", user: user)
Record.first_or_create!(name: "thing2", user: user)
Record.first_or_create!(name: "thing6", user: user)
Record.first_or_create!(name: "thing4", user: user)
Record.first_or_create!(name: "thing3", user: user)

col.records = Record.all.take(3)
