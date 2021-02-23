# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Julius = User.create!(email: "juliusvohr@gmail.com", password: "123456")
Treehouse.create!(name: "Okavango", description: "Wonderul treehouse in the middle of the jungle", price_per_day: 5, cancel_days: 10, user: Julius)
Treehouse.create!(name: "Hambach", description: "Wonderul treehouse in the middle the total chaos", price_per_day: 1, cancel_days: 1, user: Julius)

