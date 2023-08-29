# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Listing.destroy_all

puts 'Creating 5 fake listings'

Listing.create!(
  title: 'Little Snow Flake',
  location: 'London',
  price: 75,
  description: 'Cupcake ipsum dolor sit amet. Cotton candy cheesecake sweet roll sweet sesame snaps I love.'
)

Listing.create!(
  title: 'Cool Whip',
  location: 'Rome',
  price: 98,
  description: 'Pie liquorice I love gingerbread chocolate cake icing cake cotton candy I love. Jelly-o cotton candy danish danish fruitcake lemon drops sugar plum lemon drops gummi bears.'
)

Listing.create!(
  title: 'Cosmopolitan',
  location: 'Paris',
  price: 50,
  description: 'Brownie caramels jelly-o dessert I love chocolate dessert jelly I love. Chocolate marzipan jelly I love cake I love caramels cupcake. Candy I love pastry I love brownie cake chupa chups.'
)

Listing.create!(
  title: 'Puff Puff',
  location: 'Stockholm',
  price: 150,
  description: 'Oat cake biscuit danish gingerbread gummies. Danish dragée jujubes donut chupa chups caramels tootsie roll gingerbread. Ice cream gingerbread croissant cupcake donut gummi bears dessert gingerbread dragée. '
)

Listing.create!(
  title: 'Bumble Bee',
  location: 'Amsterdam',
  price: 150,
  description: 'Halvah carrot cake carrot cake pudding jelly beans. Sesame snaps powder jujubes chocolate bar marzipan wafer. Pudding biscuit pudding pudding danish pudding.'
)

puts '5 fake listings created'
