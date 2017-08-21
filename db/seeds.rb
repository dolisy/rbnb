# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning book and booking..."

Book.destroy_all
Booking.destroy_all


puts "creating users..."

20.times do
  User.create(email: Faker::Internet.email)
end

puts "creating books..."

50.times do
  Book.create(title: Faker::Book.title, user: User.all.order("RANDOM()").first())
end

puts "creating bookings..."

10.times do
  new_booking = Booking.create(user: User.all.order("RANDOM()").first(), book: Book.all.order("RANDOM()").first())
end
