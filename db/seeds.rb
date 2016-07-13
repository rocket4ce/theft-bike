# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

User.create({email: "rocket4ce@gmail.com", password:'123456' })

10.times do |n|
  b = Bike.new
  b.color = "rojo"
  b.brand = "oxford-#{n}"
  b.ring = 20
  b.description = "lorem ipsum"
  b.photo = "bike.jpg"
  b.user_id = 1
  b.save
  puts b
end
