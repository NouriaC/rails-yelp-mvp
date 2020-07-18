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
blue_dragon = { name: "Blue Dragon", address: "7 Boundary St, London E2 7JE", phone_number: "01 20 30 33 20", category: "Chinese" }
perfect_fries =  { name: "Perfect Fries", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "01 20 30 33 21", category: "Belgian" }
franco_manca =  { name: "Franco Manca", address: "151 Earls Court Road, London SW5 9RQ", phone_number: "01 20 30 33 22", category: "Italian" }
bonne_table =  { name: "La Bonne Table", address: "Covent Garden, London WC2R 1HA", phone_number: "01 20 30 33 23", category: "French" }
sushi_shop =  { name: "Sushi Shop", address: "67 Weymouth St, Marylebone, London W1G 8NY", phone_number: "01 20 30 33 24", category: "Japanese" }

[ blue_dragon, perfect_fries, franco_manca, bonne_table, sushi_shop ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
