namespace :import do
  desc 'Import data from CSV file'
  task gender: :environment do
    require 'csv'

    file_path = Rails.root.join('db', 'Genders.csv')

    CSV.foreach(file_path, headers: true) do |row|
      Gender.create(
        id: row['id'],
        name: row['name'],
      )
    end
  end
end