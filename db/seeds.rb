# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  Guest.create(name: Faker::Name.name, smokes: false, dogs: false, cats: true, bedding: true, towels: true)
end

5.times do
  Guest.create(name: Faker::Name.name, smokes: false, dogs: false, cats: false, bedding: true, towels: true)
end
#
5.times do
  Guest.create(name: Faker::Name.name, smokes: true, dogs: false, cats: false, bedding: true, towels: true)
end

5.times do
  Guest.create(name: Faker::Name.name, smokes: false, dogs: false, cats: false, bedding: true, towels: true)
end

3.times do
  Host.create(name: Faker::Name.name, smokes: false, dogs: false, cats: false, bedding: true,
   towels: true, capacity: rand(3)+1 )
end

3.times do
  Host.create(name: Faker::Name.name, smokes: false, dogs: false, cats: true, bedding: true,
   towels: true, capacity: rand(3)+1 )
end

3.times do
  Host.create(name: Faker::Name.name, smokes: false, dogs: false, cats: true, bedding: true,
   towels: true, capacity: rand(2)+1 )
end

3.times do
  Host.create(name: Faker::Name.name, smokes: false, dogs: false, cats: false, bedding: true,
   towels: true, capacity: rand(2)+1 )
end
