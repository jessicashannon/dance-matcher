# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  Guest.create(name: Faker::Name.name, smokes: 'No', dogs: 'No', cats: 'No', bedding: 'Yes', towels: 'Yes')
end

10.times do
  Host.create(name: Faker::Name.name, smokes: 'No', dogs: 'No', cats: 'No', bedding: 'Yes', towels: 'Yes')
end
