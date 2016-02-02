json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :subscription_name, :user_id
  json.url subscription_url(subscription, format: :json)
end
