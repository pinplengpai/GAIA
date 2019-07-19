# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#befrore start please check if you have a .env file on the project directory and add the cloudnary key (you can find it on slack)

# #users
# for i in 1..5 do
#   user_i = User.new(first_name: "user_test#{i}", email: "User_test#{i}@gmail.com",
#             password: 123456)
#   user_i.remote_picture_url = "https://res.cloudinary.com/dkhldnqjn/image/upload/v1563388077/v9ofvvl7r1pt4hg9rtbe.jpg"
#   user_i.skip_email_changed_notification!
#   user_i.save!
#   puts user_i.first_name
# end

# #gardens
# User.first(2).each do |user|
#   for i in 1..3 do
#     garden_i = Garden.new(
#       name: "garden_test #{user.id} #{i}",
#       address: "all the same address is for test #{user.id} #{i}" ,
#       description: "this is for test #{user.id} #{i}",
#       size: "20 sm", price: "£800",
#       number_of_guests: 6,
#       user: user
#       )
#     garden_i.remote_picture_url = "https://i.pinimg.com/564x/a5/c3/e1/a5c3e157279166bca8f4eeeb1d84aec4.jpg"
#     garden_i.save!
#     puts garden_i.name
#   end
# end


puts 'Cleaning database...'
Booking.destroy_all
Garden.destroy_all
User.destroy_all

puts 'Creating gardens...'

GARDENS = [
   {
    name: 'Jardín Botánico Carlos Thays',
    address: 'Buenos Aires, Argentina',
    size: 8000,
    price: 6000,
    number_of_guests: 80,
    description:'The garden is triangular in shape, and is bounded by Santa Fe Avenue, Las Heras Avenue and República Árabe Siria Street.Designed by French architect and landscape designer Carlos Thays, the garden was inaugurated on September 7, 1898. Thays and his family lived in an English style mansion, located within the gardens, between 1892 and 1898, when he served as director of parks and walks in the city. The mansion, built in 1881, is currently the main building of the complex.',
    garden_rules: 'Check-in time: 9am -12pm, Check-out-time: 10pm, no smoking, no pets',
    neighbourhood: 'Palermo is a sprawling area comprising smaller enclaves, like trendy Palermo Soho and Palermo Hollywood, home of eclectic restaurants, chic cocktail haunts and quirky fashion stores. Parque Tres de Febrero, with its rose garden, planetarium and rowing lakes, attracts picnickers. Modern Latin American masterpieces are shown at the cutting-edge MALBA art museum, while the Museo Evita chronicles the life of Eva Perón.',
  },
  {
    name: 'Bali Botanic Garden',
    address: 'Bali, Indonesia',
    size: 6000,
    price: 5000,
    number_of_guests: 70,
    description: 'Bali Botanic Gardens provides a great escape to enjoy the cool central Bali upland, popular among locals and visitors who love the highlands and scenery, together with the rare tropical flowering plants and specimens in its vast collection.',
    garden_rules: 'Check-in time: 10am to 1pm, check-out time: 11pm, no smoking, no pets',
    neighbourhood: 'Bedugul is the name used to cover a large area of the central highlands of Bali around the villages of Bedugul itself, Candikuning, Pancasari, Pacung and Wanagiri (amongst others). This is an area of great natural beauty. The focus point of the area centres on the three crater lakes of Bratan (Beratan), Buyan and Tamblingan, and the nearby botanical gardens. The whole area is at an altitude of 700 metres or more, with the tallest mountain peaks above 2,000 metres, and it can be distinctly chilly here',
  },
  {
  name: "Nice garden for your beautiful event",
  address: "San Jose, Costa Rica",
  size: 100,
  price: 200,
  number_of_guests: 500,
  description: "this are a set of gardens outside of San jose, Costa Rica. The garden is open to the public, but is operated by the University of Costa Rica (UCR) as a research center and is a major center for orchid research in both Central America and the Caribbean",
  garden_rules: "Sono un ex imprenditore di 60 anni in gamba:) , ho due figlie, moglie, cani, gatti e galline. Sono apicoltore, produttore di olio, ex parapendista. Adoro i vegetali, e sono un po' buddista. Mi piace coltivare biologico, adoro L'Ariege la montagna.   Parlo correttamente francese. A presto!    I am a former entrepreneur, aged 60, I have two daughters, a wife, some dogs, cats and chickens. I am a beekeeper, I love vegetables, I produce homemade organic olive-oil and grow organic garden. I am Buddhist and adore the mountains and the Ariege , now and then I go paragliding. I speak fluently French, a bit of English and Spanish.",
  neighbourhood: 'Located in the heart of Costa Rica, San Jose is one of the most diverse provinces in the country due to its dense urban capital city also known as downtown San Jose. Boasting a pleasant and mild climate, San Jose is one of the most populated regions of the country and welcomes visitors regularly. Its central location allows for direct access to the most popular attractions throughout the country. In addition, because of the city of San Jose, getting around is very easy because many of the roads are paved unlike some less-developed areas along the coastline and in densely forested areas.',
},

{
  name: "Rent the garden in the old castle",
  address: "Paris, France",
  size: 50,
  price: 50000,
  number_of_guests: 48,
  description: 'This gardenwas the main garden for the ladies of the royal court, especially a favorite spot for the Queen, Marie Antoinette. Created strategically between the Grand Palais and the Petit Palais, the park served as place of serene and calm conversation for the people of the realm. It is definitely one of the top 10 best gardens in Paris because it now includes fun activities such as a merry-go-round, swing boats, even crepe and cotton-candy stands. It’s the perfect place to take you and your children for a day of activities (more family activities in Paris).',
  garden_rules: "Guest has the right to freely use the apartment and all equipment and rooms inventory and installation carefully and responsibly.
  Guest should not:
  Leave appliances, air-conditioning and other electrical equipment on while leaving the suite. Also all doors and windows should be closed before leaving.
  • Bring in flammable or explosive materials or materials with strong and unpleasant odours.
  • Smoke in the suite, except outside area (smoking is allowed on the terrace)
  • Take away any objects, inventory or appliances out of the suite
  • Move the arrangement of furniture in the suite.
  • Disturb peace between 11pm and 7am, or make loud noise by use of radio sets, television or other appliances or musical instruments.
  Guest agrees to:
  • Leave the suite on the last day by 10am if guest don't have other arrangements with the host.
  • Let know the host on arrival at what time is checking out from apartment for returning keys.
  And most importantly - enjoy your event!
  ",
  neighbourhood:"Paris, the cosmopolitan capital of France, is one Europe's largest cities, with 2.2 million people living in the dense, central city and almost 12 million people living in the whole metropolitan area. Located in the north of France on the river Seine, Paris has the well deserved reputation of being the most beautiful and romantic of all cities, brimming with historic associations and remaining vastly influential in the realms of culture, art, fashion, food and design. Dubbed the City of Light (la Ville Lumière) and Capital of Fashion, it is home to the world's finest and most luxurious fashion designers and cosmetics, such as Louis Vuitton, Chanel, Dior, Yves Saint-Laurent, Guerlain, Lancôme, L'Oréal, Clarins, etc. A large part of the city, including the River Seine, is a UNESCO World Heritage Site. The city has the second highest number of Michelin restaurants in the world (after Tokyo) and contains numerous iconic landmarks, such as the world's most visited tourist site the Eiffel Tower, the Arc de Triomphe, the Notre-Dame Cathedral, the Louvre Museum, Moulin Rouge, and Lido, making it the most popular tourist destination in the world with 45 million tourists annually.",
},
{
  name: "Extraodinary garden for your extraodinary day",
  address: "Maehongsorn, Thailand",
  size: 150,
  price: 80000,
  number_of_guests: 140,
  description: 'Pang Oung is a pretty and serene lake in a valley glittering with sunlight surrounded by mountain ranges. The area has an incredibly soothing atmosphere and draws comparison to Switzerland and New Zealand. Many still doubt that this natural beauty and serenity can be experienced in Thailand.
Pang Oung, also called the Second Pang Tong Royal Project, is situated about forty-four kilometers from Mueng District. Inside the project is Ruam Thai village where delicious and aromatic coffee amidst exquisite flower gardens is offered.
Rafting in the lake is not to be missed. Relax yourself on the raft and admire the spectacular scenery. Six kilometers away from the village, you can sip and buy tea at Ruk Thai village, a village with Yunnan Chinese culture. The tea leaves and preserved fruits are very famous.
Do not miss Arabia coffee at Foodbank Coffee Shop. Many of villagers in the area grow coffee and sell the beans at a reasonable price.
Pang Oung can be visited all year though winter is very highly recommended for its unique beauty.',
garden_rules: "Gaia allows hosts to choose among three standardized cancellation policies (Flexible, Moderate, and Strict) that we will enforce to protect both guest and host alike. The Super Strict cancellation policies apply to special circumstances and are by invitation only. The Long Term cancellation policy applies to all reservations of 28 nights or more. Each listing and reservation on our site will clearly state the cancellation policy. Guests may cancel and review any penalties by viewing their travel plans and then clicking ‘Cancel’ on the appropriate reservation. A host will be able to see the number of reservations a guest has canceled over the previous 12 mnths when the guest submits a request to book.",
neighbourhood: "With its remote setting and surrounding mountains, Mae Hong Son (แม่ฮ่องสอน) fits many travellers’ preconceived notion of how a northern Thai city should be. A palpable Burmese influence and a border-town feel don’t clash with this image and, best of all, there’s hardly a túk-túk or tout to be seen. This doesn’t mean Mae Hong Son is uncharted territory – tour groups have been coming here for years – but the city’s potential as a base for activities, from boat trips to trekking, ensures that your visit can be quite unlike anyone else’s",
}]

PHOTOS = ["https://i.pinimg.com/564x/bb/fe/c6/bbfec6f5547a67271f13924682d8c6b9.jpg",
"https://i.pinimg.com/564x/2a/82/ec/2a82ec6dc9b415e95b106024bbd04b6e.jpg",
'https://i.pinimg.com/564x/a5/c3/e1/a5c3e157279166bca8f4eeeb1d84aec4.jpg',
'https://i.pinimg.com/564x/f8/1e/ac/f81eac3b593c5f659649b8b5212811ef.jpg',
'https://i.pinimg.com/564x/f9/0c/7c/f90c7c6e620cce42467f593dbe938956.jpg']

USERS = [
{
  first_name: "Sebastian",
  last_name: "Buffo Sempe",
  email: "sebas@gmail.com",
  password: 123456
},
{
  first_name: "Phyllis",
  last_name: "Mo",
  email: "yuyu@gmail.com",
  password: 123456
},
{
  first_name: "Pin",
  last_name: "Buffo Sempe",
  email: "pin@gmail.com",
  password: 123456
},
{
  first_name: "Fernando",
  last_name: "Americano",
  email: "fer@gmail.com",
  password: 123456
},
{
  first_name: "Orlando",
  last_name: "Pereira",
  email: "orlando@gmail.com",
  password: 123456
},
{
  first_name: "Samuel",
  last_name: "Levy",
  email: "sam@gmail.com",
  password: 123456
},
]

puts ""
puts "- Creating users"
puts ""
USERS.each do |user|
  user = User.new(user)
  user.skip_email_changed_notification!
  user.save!
  puts "  created #{user.first_name} #{user.last_name}"
end

puts ""
puts "- Creating gardens and bookings"
puts ""
GARDENS.each_with_index do |attr, index|
  garden = Garden.new(attr)
  garden.remote_picture_url = PHOTOS[index]
  garden.user = User.first(2).sample
  garden.save!
  puts ""
  puts "  created #{garden.name}"
  rand(10..20).times do
    start_date = Date.today - rand(10..20).days
    booking = Booking.new(
      start_date: start_date,
      end_date: start_date + rand(2..8).days,
      status: %w[Pending Confirmed Declined Cancelled].sample
      )
    booking.user = User.last(4).sample
    booking.garden = Garden.all.sample
    booking.save!
    puts "    created for #{garden.name} on the #{booking.start_date}"
  end
end

puts ""
puts "Finished seeding process!"

