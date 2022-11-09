# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Destroying flats'

Flat.destroy_all

puts 'Creating flats'

10.times do
  Flat.create(
    name: Faker::JapaneseMedia::OnePiece.island,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph(sentence_count: rand(2..6)),
    price_per_night: rand(50..10_000),
    number_of_guests: rand(1..6)
  )
end

puts 'Finished'
