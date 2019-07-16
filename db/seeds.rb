# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#befrore start please check if you have a .env file on the project directory and add the cloudnary key (you can find it on slack)

Garden.destroy_all
User.destroy_all
#users
for i in 1..10 do
  user_i = User.new(first_name: "user_test#{i}", email: "User_test#{i}@gmail.com",
            password: 123456)
  user_i.remote_image_url_url = "https://avatars0.githubusercontent.com/u/47560671?v=4"
  user_i.skip_email_changed_notification!
  user_i.save!
  puts user_i.first_name
end

#gardens
User.first(5).each do |user|
  for i in 1..4 do
    garden_i = Garden.new(
      name: "garden_test #{user.id} #{i}",
      address: "all the same address is for test #{user.id} #{i}" ,
      description: "this is for test #{user.id} #{i}",
      size: "20 sm", price: "£800",
      number_of_guests: 6,
      user: user
      )
    garden_i.remote_image_url_url = "https://www.gardendesign.com/pictures/images/973x490Exact_0x58/site_3/colorful-flowers-terraced-hillside-garden-design_11850.jpg"
    garden_i.save!
    puts garden_i.name
  end
end
