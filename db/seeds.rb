# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Treehouse.destroy_all





names = ['Squirrel castle', 'Owl hole', 'Oak mansion', 'Wood manor']
descriptions = ['Cozy little treehouse', 'Nice forest apartment', 'Luxurious tree penthouse', 'Lavish forest experience']
prices = [25, 57, 81, 42]
cancel_days = [14, 7, 3, 14]

t1 = Treehouse.new(user: User.first, name: names[0], description: descriptions[0], price_per_day: prices[0], cancel_days: cancel_days[0])
t1.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614091940/sfautdhubttwb66zpt6v.jpg'), filename: 'treehouse1.jpg', content_type: 'image/jpg')
t1.save
t2 = Treehouse.new(user: User.first, name: names[1], description: descriptions[1], price_per_day: prices[1], cancel_days: cancel_days[1])
t2.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614091949/kbxjpoydyglxsifdqhje.jpg'), filename: 'treehouse2.jpg', content_type: 'image/jpg')
t2.save
t3 = Treehouse.new(user: User.first, name: names[2], description: descriptions[2], price_per_day: prices[2], cancel_days: cancel_days[2])
t3.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614091983/hlo4aanjzygonnlvbets.jpg'), filename: 'treehouse3.jpg', content_type: 'image/jpg')
t3.save
t4 = Treehouse.new(user: User.first, name: names[3], description: descriptions[3], price_per_day: prices[3], cancel_days: cancel_days[3])
t4.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614091997/z9zlkbkam5ic1is4ns9t.jpg'), filename: 'treehouse4.jpg', content_type: 'image/jpg')
t4.save