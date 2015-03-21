json.array!(@cows) do |cow|
  json.extract! cow, :id
  json.url cow_url(cow, format: :json)
end
