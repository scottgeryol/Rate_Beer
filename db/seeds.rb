Beer.create(name: "Parrot of Paradise", brewery: "Half Acre Beer Company", style: "IPA", abv: "6.7%", rating: 7 / 10)
Beer.create(name: "Lager", brewery: "Dovetail Brewery", style: "Lager", abv: "4.7%", rating: 8 / 10)
Beer.create(name: "Broccoli", brewery: "Other Half Beer Company", style: "IPA", abv: "7.9%", rating: 8 / 10)

Brewery.create(name: "Half Acre Beer Company", location: "Chicago, IL", beer_id: 1, rating: 9, website: "https://www.halfacrebeer.com/)")
Brewery.create(name: "Dovetail Brewery", location: "Chicago, IL", beer_id: 1, rating: 8, website: "")
Brewery.create(name: "Other Half Beer Comnpany", location: "Brooklyn, NY", beer_id: 1, rating: 8, website: "")

puts "yes"
