namespace :import do
  desc 'Import data from CSV file'
  task continents: :environment do
    require 'csv'

    file_path = Rails.root.join('db', 'Continents.csv')

    CSV.foreach(file_path, headers: true) do |row|
      Continent.create(
        id: row['id'],
        name: row['name'],
      )
    end
  end
end