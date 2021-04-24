puts 'cleaning up database'
Restaurant.destroy_all
puts 'database is clean'
puts 'creating restaurants'

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end

puts 'restaurants created'
