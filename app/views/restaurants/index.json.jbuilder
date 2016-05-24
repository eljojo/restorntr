json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :content, :lat, :lon
  json.url restaurant_url(restaurant, format: :json)
end
