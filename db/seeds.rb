# db/seeds.rb

# Clear existing FakerData records if necessary
# FakerData.destroy_all

# Create 10 fake records for the FakerData model
10.times do
  FakerDatum.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    bio: Faker::Lorem.sentence,
    image: Faker::Avatar.image
  )
end

puts "Seed data for FakerData created successfully!"
