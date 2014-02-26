json.array!(@shopper_profiles) do |shopper_profile|
  json.extract! shopper_profile, :id, :user_id
  json.url shopper_profile_url(shopper_profile, format: :json)
end
