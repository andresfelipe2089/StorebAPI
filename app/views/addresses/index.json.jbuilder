json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :zip, :city, :country
  json.url address_url(address, format: :json)
end
