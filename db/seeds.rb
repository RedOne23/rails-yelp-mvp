# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "03 45 65 78 90", category: "italian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "03 45 65 78 90", category: "french"}
restaurant_pasta = {name:"pasta-resto", address: "Rue des pasta", phone_number: "03 45 65 78 90", category: "italian"}
restaurant_tacos = {name:"pasta-tacos", address: "Rue des tacos", phone_number: "03 45 65 78 90", category: "belgian"}
restaurant_pizza = {name:"pasta-pizza", address: "Rue des pizza", phone_number: "03 45 65 78 90", category: "italian"}


[ dishoom, pizza_east, restaurant_pasta, restaurant_tacos, restaurant_pizza].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"