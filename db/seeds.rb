# User.delete_all

# 5.times do
#   user = User.create(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     bio: Faker::Lorem.sentence,
#     image: Faker::Avatar.image,
#     genders_id: [1, 2].sample,
#     country_id: rand(1..197)
#   )
# end

# require 'csv'

# csv_file = File.join('db', 'Titles.csv')

# if File.exist?(csv_file)
#   CSV.foreach(csv_file) do |row|
#     id, name = row[0].to_i, row[1]
#     Title.create(id: id, name: name)
#   end

#   puts "good x)"
# else
#   puts "error"
# end

title_ids = (1..6).to_a

User.all.each do |user|
  num_titles_to_assign = rand(1..3)
  assigned_title_ids = title_ids.shuffle.take(num_titles_to_assign)
  assigned_title_ids.each do |title_id|
    UserTitle.create(user: user, title_id: title_id)
  end
end