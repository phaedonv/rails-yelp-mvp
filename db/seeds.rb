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
lsdlp = { name: "La Strada de la Pizza", address: "10 Pizza St, Some Greek City A6 42N", category: "Pizzeria", phone_number: "33 33 55 55 55", reviews: 3 }
pizza_fun = { name: "Pizza FAN", address: "42S Pizzastreet High St, Some Greek City JK9 Q42", category: "Pizzeria", phone_number: "44 44 66 66 66", reviews: 4 }
resone = { name: "Pdsza FAN", address: "42S Pizzastreet High St, Some Greek City JK9 Q42", category: "Pizzeria", phone_number: "44 44 66 66 66", reviews: 4 }
restwo = { name: "Pizza FuN", address: "42S Pizzastreet High St, Some Greek City JK9 Q42", category: "Pizzeria", phone_number: "44 44 66 66 66", reviews: 4 }
resthree = { name: "Pizza F4N", address: "42S Pizzastreet High St, Some Greek City JK9 Q42", category: "Pizzeria", phone_number: "44 44 66 66 66", reviews: 4 }
restaurants_test = [lsdlp, pizza_fun, resone, restwo, resthree]
restaurants_test.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
#require 'faker'
#10.times
