# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..10 do
  test_i = User.new(first_name: "test#{i}", email: "s#{i}@gmail.com", password: 123456)
  test_i.skip_email_changed_notification!
  test_i.save
end
