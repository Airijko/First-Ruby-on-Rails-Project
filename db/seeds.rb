# User.delete_all

5.times do
  user = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    bio: Faker::Lorem.sentence,
    image: Faker::Avatar.image,
    genders_id: [1, 2].sample,
    country_id: rand(1..197)
  )
end
