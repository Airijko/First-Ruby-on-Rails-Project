namespace :import do
  desc 'Import data from CSV file'
  task countries: :environment do
    require 'csv'

    file_path = Rails.root.join('db', 'Countries.csv')

    CSV.foreach(file_path, headers: true) do |row|
      Country.create(
        id: row['id'],
        name: row['name'],
      )
    end
  end
end