# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Jelena")
Beer.create(name: "Beer 1", brand: "Good Beer", style: "IPA", strength: "Medium", abv: 5.5)
#Review.create(content: "This beer is good", rating: 5, user_id: 1, beer_id: 1, tracked: 1)
Brewery.create(name: "Austin Beer", address: "111 Beer Street", city: "Austin", zip_code: 12345)
#BeerBrewery.create(beer_id: 1, brewery_id: 1)