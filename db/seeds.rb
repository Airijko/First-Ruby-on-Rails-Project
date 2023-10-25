5.times do
  user = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    bio: Faker::Lorem.sentence,
    image: Faker::Avatar.image
  )
end
