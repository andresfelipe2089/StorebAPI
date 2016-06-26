json.array!(@stores) do |store|
  json.extract! store, :id, :title, :opening_hours
  json.url store_url(store, format: :json)
end
