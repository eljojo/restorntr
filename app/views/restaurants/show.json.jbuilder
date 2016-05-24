json.extract! @restaurant, :id, :name, :content, :lat, :lon, :created_at, :updated_at
json.url restaurant_url(@restaurant, format: :json)

json.reviews @restaurant.reviews do |review|
  json.extract! review, :id, :restaurant_id, :author_name, :content
  json.url review_url(review, format: :json)
end
