json.array!(@retailer_profiles) do |retailer_profile|
  json.extract! retailer_profile, :id, :user_id, :business_name, :website, :phone, :address1, :address2, :suburb, :postcode, :country, :paypal_username
  json.url retailer_profile_url(retailer_profile, format: :json)
end
