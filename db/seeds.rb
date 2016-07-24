# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

User.create({email: "rocket4ce@gmail.com", password:'123456', username: 'rocket4ce dinko esta pelado', avatar: 'avatar.jpg' })
User.create({email: "rocket4cea@gmail.com", password:'123456', username: 'rocket4ce dinko esta peladó', avatar: 'avatar.jpg' })

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

5.times do |n|
  e = Bike.new
  e.color = "rojos-#{n}"
  e.brand = "oxfords-#{n}"
  e.ring = 20
  e.description = "loremss ipsum"
  e.photo = "bikesss.jpg"
  e.user_id = 2
  e.save
   if e.errors.any?
     e.errors.full_messages.each do |message|
       puts message
     end
   end
end

Stole.create({user_id: 1, bike_id: 2, time_theft: Time.now, address: 'Juan cisternas 1960, la serena' })

Avistamiento.create({ user_id: 2, stole_id: 1 , bike_id: 2, photo: 'photo.jpg' ,fecha_avistamiento: DateTime.now + 1.day, address: 'Juan cisternas 1200, la serena' })
