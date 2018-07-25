# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |index|
  users = User.create(name: "Name#{index}")
end

10.times do |index|
  pins = Pin.create(url: "www.lien-image-#{index}.co", users_id: "#{index}".to_i)
end

10.times do |index|
  comments = Comment.create(pin_id: "#{index}".to_i, body: "Voici un commentaire" , user_id: "#{index}".to_i)
end
