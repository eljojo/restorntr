# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def _add_restaurant(name, lat, lon)
  restaurant = Restaurant.where(name: name).first_or_initialize
  restaurant.content = restaurant.content.presence || "in #{name} we offer the best Pizzas!"
  restaurant.lat = lat
  restaurant.lon = lon
  restaurant.save!
  restaurant
end

def _add_review(restaurant, author, message)
  review = restaurant.reviews.where(author_name: author).first_or_initialize
  review.content = review.content.presence || message
  review.save!
  review
end

pizzahut = _add_restaurant("Pizza Hut", -33.3782029, -70.5576414)
_add_review(pizzahut, "Vikingo", "La masa no es tan buena")
_add_review(pizzahut, "Jojo", "Les falta pepperoni")

pizzeriaroma = _add_restaurant("Pizzeria Roma", -33.3734084,-70.5177884)
_add_review(pizzeriaroma, "Vikingo", "La masa es mejor")
_add_review(pizzeriaroma, "Jojo", "mucho pepperoni")

santapizza = _add_restaurant("Santa Pizza", -33.371372,-70.507033)
_add_review(santapizza, "Vikingo", "4/5 estrellas")
_add_review(santapizza, "Jojo", "<strong>QUE PASA HAXOR</strong><script>alert('H4ck3d')></script>")

tuttopizza = _add_restaurant("Tutto Pizza", -33.4131065,-70.5404147)
_add_review(tuttopizza, "Jojo", "me dio tuto")
_add_review(tuttopizza, "Vikingo", "100/10 estrellas")
