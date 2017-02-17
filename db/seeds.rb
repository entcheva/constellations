# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


stars = 200
counter = 0
while counter < stars do
  x = rand(1400)
  y = rand(1000)
  star = Star.create(x: x, y: y)
  counter += 1
end
