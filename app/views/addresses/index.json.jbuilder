json.array!(@addresses) do |address|
  json.extract! address, :id, :name, :address1, :address2, :suburb, :postcode, :state, :country
  json.url address_url(address, format: :json)
end
