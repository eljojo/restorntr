json.array!(@reviews) do |review|
  json.extract! review, :id, :restaurant_id, :author_name, :content
  json.url review_url(review, format: :json)
end
