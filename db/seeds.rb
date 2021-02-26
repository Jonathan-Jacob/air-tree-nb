# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Treehouse.destroy_all





names = ['Squirrel castle', 'Owl hole', 'Oak mansion', 'Wood manor', 'Moonstone Tree Castle', 'Hamanasi Adventure', 'Treehouse Point', 'Floating House', '727 Airplane', 'Eureka Cottages', 'Tropical Treehouse', 'Winivan Farm', 'Canopy Blue', 'Woodpeckers Palace' ]
descriptions = ['Cozy little treehouse', 'Nice forest apartment', 'Luxurious tree penthouse', 'Lavish forest experience', 'This property goes so far above the idea of a treehouse, it has to be called a treecastle! Supported by a cluster of five trees, it looks like it belongs in a fairy tale – both inside and out. The turret right off the bedroom is an especially cozy spot to read, write or let your imagination wander as you stare happily at the richly-patterned poplar ceiling.', 'After winding through orchid-lined paths in Hamanasi’s beachfront forest, you’ll discover 16 private treehouses just steps from the Caribbean Sea. Each spacious abode boasts handcrafted Belizean hardwood furniture – much of it made onsite by Hamanasi’s carpenters – draped beds, and local art all enveloped in cool tropical tones.', 'This world-class bed and breakfast features half a dozen treehouses, each equipped with electricity and heat – and its own distinct personality. Coolers are provided so you can keep drinks and snacks handy, and a homemade continental breakfast is served in the Lodge every morning.', 'This award-winning masterpiece of architecture offers the unique experience of floating above the Costa Rican jungle canopy, totally surrounded by nature. The scenery is incredible wherever you look, from sunrise over the mountains to sunset over the Pacific. You may find yourself eye-to-eye with a monkey on its own treetop or sharing a bird’s eye view of the area with the eagles that glide alongside and circle the expansive verandas.', 'One of the most unique places you’ll ever spend the night, this refurbished 727 is perched on a custom-built platform 50 feet above the ground with expansive views of both the ocean and the jungle.', 'Tucked away in a 33-acre tall pine forest, these beautifully-crafted treehouses stand 22 to 26 feet off the ground. Designed and hand-built by owners Terry and Patsy Miller, they offer rustic luxury, with heat, air-conditioning and full kitchenettes.', 'Located minutes away from some of the island’s most exotic beaches, these two bamboo “hooches” are the perfect places to take in the spectacular sunset. In fact, the Sunset Hooch offers you two levels of complete privacy to do just that. Everything is solar-powered and there’s even a flush toilet and an outlet to charge your phone.', 'Suspended 35 feet above the forest floor, this two-story luxury treehouse has pretty much every amenity you could think of, from a fireplace on each floor to a steam shower and Jacuzzi, to a full bar. And that’s not even including the treetop views of the New England forest.', 'Perched on four private acres overlooking the Chattahoochee-Oconee National Forest, this one bedroom, one bathroom treehouse is filled with so many unique architectural and designer details. One you’re likely to appreciate most is the hanging bed/sofa in the upstairs loft, where you can settle in and take in the magnificent views.', 'A quiet refuge from the touristy areas, this two bedroom, two bath mountainside treehouse is located in a 250-acre protected, forested Nature Eco-reserve just a short drive from some of the country’s most unspoiled and uncrowded beaches.']
prices = [25, 57, 81, 42, 65, 81, 90, 27, 109, 45, 60, 50, 99, 199]
cancel_days = [14, 7, 3, 14, 7, 4, 9, 7, 7, 7, 10, 12, 5, 14]
capacity = [4, 3, 6, 8, 6, 4, 5, 2, 100, 12, 7, 12, 14, 20]

t1 = Treehouse.new(user: User.first, name: names[0], description: descriptions[0], price_per_day: prices[0], cancel_days: cancel_days[0], address: "Berlin", capacity: capacity[0])
t1.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614091940/sfautdhubttwb66zpt6v.jpg'), filename: 'treehouse1.jpg', content_type: 'image/jpg')
t1.save!
t2 = Treehouse.new(user: User.first, name: names[1], description: descriptions[1], price_per_day: prices[1], cancel_days: cancel_days[1], address: "Paris", capacity: capacity[1])
t2.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614091949/kbxjpoydyglxsifdqhje.jpg'), filename: 'treehouse2.jpg', content_type: 'image/jpg')
t2.save
t3 = Treehouse.new(user: User.first, name: names[2], description: descriptions[2], price_per_day: prices[2], cancel_days: cancel_days[2], address: "Rome", capacity: capacity[2])
t3.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614091983/hlo4aanjzygonnlvbets.jpg'), filename: 'treehouse3.jpg', content_type: 'image/jpg')
t3.save
t4 = Treehouse.new(user: User.first, name: names[3], description: descriptions[3], price_per_day: prices[3], cancel_days: cancel_days[3], address: "Amsterdam", capacity: capacity[3])
t4.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614091997/z9zlkbkam5ic1is4ns9t.jpg'), filename: 'treehouse4.jpg', content_type: 'image/jpg')
t4.save
t5 = Treehouse.new(user: User.first, name: names[4], description: descriptions[4], price_per_day: prices[4], cancel_days: cancel_days[4], address: "Weaverville", capacity: capacity[4])
t5.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614347928/mnf1fylqaqadqig3ue5x.jpg'), filename: 'Moonstone.jpg', content_type: 'image/jpg')
t5.save
t6 = Treehouse.new(user: User.first, name: names[5], description: descriptions[5], price_per_day: prices[5], cancel_days: cancel_days[5], address: "Belize", capacity: capacity[5])
t6.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614348022/dbwbg3dbklygoajtlkfm.jpg'), filename: 'Hamanasi.jpg', content_type: 'image/jpg')
t6.save
t7 = Treehouse.new(user: User.first, name: names[6], description: descriptions[6], price_per_day: prices[6], cancel_days: cancel_days[6], address: "Issaquah", capacity: capacity[6])
t7.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614348414/zvroisurenlvosydxcg5.jpg'), filename: 'TreehousePoint.jpg', content_type: 'image/jpg')
t7.save
t8 = Treehouse.new(user: User.first, name: names[7], description: descriptions[7], price_per_day: prices[7], cancel_days: cancel_days[7], address: "Puntarenas", capacity: capacity[7])
t8.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614348239/yujtah4qjm8k3mii5710.jpg'), filename: 'Floating.jpg', content_type: 'image/jpg')
t8.save
t9 = Treehouse.new(user: User.first, name: names[8], description: descriptions[8], price_per_day: prices[8], cancel_days: cancel_days[8], address: "Quepos", capacity: capacity[8])
t9.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614348188/vphsynp86oewh5zklbc6.jpg'), filename: '727.jpg', content_type: 'image/jpg')
t9.save
t10 = Treehouse.new(user: User.first, name: names[9], description: descriptions[9], price_per_day: prices[9], cancel_days: cancel_days[9], address: "Eureka Springs", capacity: capacity[9])
t10.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614348351/ypvli7swjmn42dtf4vzz.jpg'), filename: 'Treehousecottages.jpg', content_type: 'image/jpg')
t10.save
t11 = Treehouse.new(user: User.first, name: names[10], description: descriptions[10], price_per_day: prices[10], cancel_days: cancel_days[10], address: "Rincon", capacity: capacity[10])
t11.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614348441/zhur25n5qsrw2ymnypro.jpg'), filename: 'Tropical.jpg', content_type: 'image/jpg')
t11.save
t12 = Treehouse.new(user: User.first, name: names[11], description: descriptions[11], price_per_day: prices[11], cancel_days: cancel_days[11], address: "Litchfield Hills", capacity: capacity[11])
t12.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614348479/u2jh6rwunxm1tfshqcu0.jpg'), filename: 'Winivan.jpg', content_type: 'image/jpg')
t12.save
t13 = Treehouse.new(user: User.first, name: names[12], description: descriptions[12], price_per_day: prices[12], cancel_days: cancel_days[12], address: "Blue Ridge", capacity: capacity[12])
t13.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614348208/xedzfrywqroeuduanhqw.jpg'), filename: 'Canopy.jpg', content_type: 'image/jpg')
t13.save
t14 = Treehouse.new(user: User.first, name: names[13], description: descriptions[13], price_per_day: prices[13], cancel_days: cancel_days[13], address: "Guancaste", capacity: capacity[13])
t14.photo.attach(io: file = URI.open('https://res.cloudinary.com/dxipt5061/image/upload/v1614348266/amidlyzgsra9pzn4cqwj.jpg'), filename: 'Luxury.jpg', content_type: 'image/jpg')
t14.save

# Moonstone = "https://res.cloudinary.com/dxipt5061/image/upload/v1614347928/mnf1fylqaqadqig3ue5x.jpg",
# Hamanasi =   "https://res.cloudinary.com/dxipt5061/image/upload/v1614348022/dbwbg3dbklygoajtlkfm.jpg",
# 727=  "https://res.cloudinary.com/dxipt5061/image/upload/v1614348188/vphsynp86oewh5zklbc6.jpg",
# Canopy =   "https://res.cloudinary.com/dxipt5061/image/upload/v1614348208/xedzfrywqroeuduanhqw.jpg",
# Floating =   "https://res.cloudinary.com/dxipt5061/image/upload/v1614348239/yujtah4qjm8k3mii5710.jpg",
# Luxury =   "https://res.cloudinary.com/dxipt5061/image/upload/v1614348266/amidlyzgsra9pzn4cqwj.jpg",
# Treehousecottages =   "https://res.cloudinary.com/dxipt5061/image/upload/v1614348351/ypvli7swjmn42dtf4vzz.jpg",
# TreehousePoint =   "https://res.cloudinary.com/dxipt5061/image/upload/v1614348414/zvroisurenlvosydxcg5.jpg",
# Tropical =   "https://res.cloudinary.com/dxipt5061/image/upload/v1614348441/zhur25n5qsrw2ymnypro.jpg",
# Winivan =   "https://res.cloudinary.com/dxipt5061/image/upload/v1614348479/u2jh6rwunxm1tfshqcu0.jpg",
