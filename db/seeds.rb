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
lsdlp = { name: "La Strada de la Pizza", address: "10 Pizza St, Some Greek City A6 42N", category: "Pizzeria", phone_number: 3333555555, reviews: 3 }
pizza_fun = { name: "Pizza FAN", address: "42S Pizzastreet High St, Some Greek City JK9 Q42", category: "Pizzeria", phone_number: 4444666666, reviews: 4 }
test1 = { name: "Pdsza FAN", address: "42S Pizzastreet High St, Some Greek City JK9 Q42", category: "Pizzeria", phone_number: 4444666666, reviews: 4 }
test2 = { name: "Pizza FuN", address: "42S Pizzastreet High St, Some Greek City JK9 Q42", category: "Pizzeria", phone_number: 4444666666, reviews: 4 }
test3 = { name: "Pizza F4N", address: "42S Pizzastreet High St, Some Greek City JK9 Q42", category: "Pizzeria", phone_number: 4444666666, reviews: 4 }
[lsdlp, pizza_fun, test1, test2, test3].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
#require 'faker'
#10.times
