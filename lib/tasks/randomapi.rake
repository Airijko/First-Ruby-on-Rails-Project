namespace :db do
  task randomapi: :environment do
    require 'httparty'
    require 'faker'

    randomapi_url = 'https://randomuser.me/api/'

    10.times do
      response = HTTParty.get(randomapi_url)
      user_data = JSON.parse(response.body)

      User.create(
        name: user_data['name'],
        email: user_data['email'],
        bio: Faker::Lorem.paragraph,
        image: Faker::Avatar.image,
        genders_id: [1, 2].sample,
        country_id: rand(1..197)
      )
    end

    puts 'Users created successfully!'
  end
end
