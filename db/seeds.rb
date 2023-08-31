# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
Listing.destroy_all
User.destroy_all

puts 'Creating 1 user'
user = User.create!(
  email: "aaa@aaa.aaa",
  password: "123456"
)
puts 'Succesful creation'

puts 'Creating 5 fake listings'

listing1 = Listing.new(
  title: 'Little Snow Flake',
  location: 'Berlin, Germany',
  price: 75,
  description: 'Cupcake ipsum dolor sit amet. Cotton candy cheesecake sweet roll sweet sesame snaps I love.',
  user: user
)
file = URI.open("https://res.cloudinary.com/duewacljk/image/upload/v1693476302/dxq7jbcqwcacz5ahce2f.jpg")
listing1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
listing1.save!

listing2 = Listing.new(
  title: 'Buttercup',
  location: 'Rome',
  price: 98,
  description: 'Pie liquorice I love gingerbread chocolate cake icing cake cotton candy I love. Jelly-o cotton candy danish danish fruitcake lemon drops sugar plum lemon drops gummi bears.',
  user: user
)
file = URI.open("https://res.cloudinary.com/duewacljk/image/upload/v1693476286/qf3s9u5spmclr05tri25.png")
listing2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
listing2.save!

listing3 = Listing.new(
  title: 'Cosmopolitan',
  location: 'Paris',
  price: 50,
  description: 'Brownie caramels jelly-o dessert I love chocolate dessert jelly I love. Chocolate marzipan jelly I love cake I love caramels cupcake. Candy I love pastry I love brownie cake chupa chups.',
  user: user
)
file = URI.open("https://res.cloudinary.com/duewacljk/image/upload/v1693476289/ctrbn4ikynxytdxvfz9s.jpg")
listing3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
listing3.save!

listing4 = Listing.new(
  title: 'Stardust',
  location: 'Stockholm',
  price: 150,
  description: 'Oat cake biscuit danish gingerbread gummies. Danish dragée jujubes donut chupa chups caramels tootsie roll gingerbread. Ice cream gingerbread croissant cupcake donut gummi bears dessert gingerbread dragée. ',
  user: user
)
file = URI.open("https://res.cloudinary.com/duewacljk/image/upload/v1693476304/ayx3cauryeaj2k0otvuc.jpg")
listing4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
listing4.save!

listing5 = Listing.new(
  title: 'Bumble Bee',
  location: 'Amsterdam',
  price: 150,
  description: 'Halvah carrot cake carrot cake pudding jelly beans. Sesame snaps powder jujubes chocolate bar marzipan wafer. Pudding biscuit pudding pudding danish pudding.',
  user: user
)
file = URI.open("https://res.cloudinary.com/duewacljk/image/upload/v1693476297/zfwv0fjxx5g1kkcrtzvv.jpg")
listing5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
listing5.save!

 puts '5 fake listings created'
