# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

my_genre = ["action", "comedie", "horreur", "drame"]
100.times do
  films = Movie.create!(name: Faker::Book.title,
    year: Faker::Number.between(1900, 2020),
     genre: my_genre[rand(0..3)],
      synopsis: Faker::Lorem.sentence(10),
       director: Faker::Name.name,
        allocine_rating: Faker::Number.between(0.0, 5.0).round(1),
         my_rating: nil.round(1),
          already_seen: false)
end

