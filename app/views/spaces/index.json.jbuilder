json.array!(@spaces) do |space|
  json.extract! space, :id, :title, :price_per_day, :price_per_week, :price_per_month
  json.url space_url(space, format: :json)
end
