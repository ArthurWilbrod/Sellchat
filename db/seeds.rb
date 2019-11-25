# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
DatabaseCleaner.allow_production = true
DatabaseCleaner.allow_remote_database_url = true
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

Cat.destroy_all
10.times do |cat|
    cat = Cat.create(
        title: Faker::Creature::Cat.name,
        description: Faker::Lorem.paragraph,
        price: Faker::Number.decimal(l_digits: 2),
        image_url: "http://www.leparisien.fr/resizer/74wMQIeXKLDUKuKvSzJQME_0ULg=/932x582/arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/KNVYKZBDTTOXNO37FEVDTD5DJU.jpg"
    )
    puts "Cat created"
end

User.destroy_all
10.times.with_index do |user, index|
    user = User.create(
        email: Faker::Internet.email,
        password: "password#{index}"
    )
    puts "User #{index} created"
end