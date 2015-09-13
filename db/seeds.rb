# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

b1 = Bike.create(brand: 'Edwardes', colour: 'Yellow/Black', owner: 'HerneHill Velodrome')
b2 = Bike.create(brand: 'Coventry Eagle', colour: 'Grey', owner: 'Ms Sara Toso')
b3 = Bike.create(brand: 'TokyoFixed', colour: 'Floamboyant Gold', owner: 'Ms Natalie Attack')
b4 = Bike.create(brand: 'Coventry Eagle', colour: 'Chrome', owner: 'Mr James Johnson')
b5 = Bike.create(brand: '14BikeCo', colour: 'Rust', owner: 'Mr Andrew Brown')
b6 = Bike.create(brand: '14BikeCo', colour: 'Red/Gold', owner: 'Mr James White')
b7 = Bike.create(brand: 'TokyoFixed', colour: 'Blue/Pink', owner: 'Mr James White')

m1 = Mechanic.create(name: 'Mihaly Dudas', shop: 'Holborn')
m2 = Mechanic.create(name: 'Pedro Peri', shop: 'Holborn')
m3 = Mechanic.create(name: 'Sebastian Santiso', shop: 'Holborn')
m4 = Mechanic.create(name: 'Darek Brokbrek', shop: 'Victoria')
m5 = Mechanic.create(name: 'Tomasz Lukow', shop: 'Victoria')

Service.create(bike: b1, mechanic: m4, product: 'Headset Install', price: 24.99)
Service.create(bike: b1, mechanic: m2, product: 'Wheelset', price: 349.99)
Service.create(bike: b2, mechanic: m5, product: 'Mudguards', price: 34.99)
Service.create(bike: b2, mechanic: m2, product: 'Gear Service', price: 14.99)
Service.create(bike: b3, mechanic: m3, product: 'Frame Stripdown', price: 5.00)
Service.create(bike: b3, mechanic: m1, product: 'Full Rebuild', price: 95.00)
Service.create(bike: b4, mechanic: m5, product: 'Hydro Brake Service', price: 59.99)
Service.create(bike: b5, mechanic: m5, product: 'Full Rebuild', price: 120.00)
Service.create(bike: b6, mechanic: m4, product: 'Full Rebuild', price: 120.00)
Service.create(bike: b6, mechanic: m3, product: 'Fork Replace', price: 25.00)
Service.create(bike: b7, mechanic: m1, product: 'General Service', price: 65.00)

puts "seeded with #{Bike.all.count} Bikes, #{Mechanic.all.count} Mechanics, and #{Service.all.count} services."