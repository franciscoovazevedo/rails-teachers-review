# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
teachers = %w(carlos mafalda cyrille nick gui joao pires costa bras filipe rui)
teachers.each do |teacher|
  Teacher.create(
    name: teacher,
    description: Faker::StarWars.quote
  )
end
