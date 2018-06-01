# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all


User.create(name: "Horace", email: "horace@gmail.com")
User.create(name: "Addison", email: "addy@gmail.com")
User.create(name: "Lorax", email: "thelorax2121@gmail.com")
User.create(name: "Grinch", email: "grinchy43@gmail.com")

Restaurant.create(name: "Grimaldi's", address: "25 Pizza Street, Brooklyn, NY 11201", cuisine: "pizza", rating: 5)
Restaurant.create(name: "The Capital Grill", address: "120 Broadway, NY, NY 10271", cuisine: "steakhouse", rating: 4)
Restaurant.create(name: "Curry Heights", address: "151 Remsen St Brooklyn, NY 11201", cuisine: "indian", rating: 4)
Restaurant.create(name: "Dos Toros Taqueria", address: "64 Court St Brooklyn, NY 11201", cuisine: "mexican", rating: 5)
