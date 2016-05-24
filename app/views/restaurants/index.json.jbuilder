json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :content, :lat, :lon
  json.url restaurant_url(restaurant, format: :html)
  json.json_url restaurant_url(restaurant, format: :json)
  json.reviews_url restaurant_reviews_url(restaurant, format: :json)
  json.reviews_json_url restaurant_reviews_url(restaurant, format: :json)
end
