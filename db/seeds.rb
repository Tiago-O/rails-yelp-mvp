puts 'cleaning up database'
Restaurant.destroy_all
puts 'database is clean'
puts 'creating restaurants with reviews!'

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164
  )

  rand(1..10).times do
    Review.create(
      rating: rand(1..5),
      content: Faker::Restaurant.review,
      restaurant: restaurant
    )
  end
end

puts 'restaurants + reviews created'
