# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#befrore start please check if you have a .env file on the project directory and add the cloudnary key (you can find it on slack)

Booking.destroy_all
Garden.destroy_all
User.destroy_all
#users
for i in 1..5 do
  user_i = User.new(first_name: "user_test#{i}", email: "User_test#{i}@gmail.com",
            password: 123456)
  user_i.remote_picture_url = "https://res.cloudinary.com/dkhldnqjn/image/upload/v1563388077/v9ofvvl7r1pt4hg9rtbe.jpg"
  user_i.skip_email_changed_notification!
  user_i.save!
  puts user_i.first_name
end

#gardens
User.first(2).each do |user|
  for i in 1..3 do
    garden_i = Garden.new(
      name: "garden_test #{user.id} #{i}",
      address: "all the same address is for test #{user.id} #{i}" ,
      description: "this is for test #{user.id} #{i}",
      size: "20 sm", price: "£800",
      number_of_guests: 6,
      user: user
      )
    garden_i.remote_picture_url = "https://res.cloudinary.com/dkhldnqjn/image/upload/v1563388789/568eba692e6df_600x_ksnrok.jpg"
    garden_i.save!
    puts garden_i.name
  end
end
