# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "start seeding"

Flat.destroy_all

6.times do
  flat = Flat.create(
    name: "#{['Flat', 'House', 'Loft'].sample} in #{Faker::Nation.capital_city}",
    address: "#{Faker::Address.street_name} street, in #{Faker::Address.city}",
    description: Faker::Hipster.paragraph,
    price_per_night: rand(20..100),
    number_of_guests: rand(1..16)
  )
end

puts "seeding is done"
