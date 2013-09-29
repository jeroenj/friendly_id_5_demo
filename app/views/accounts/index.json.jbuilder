json.array!(@accounts) do |account|
  json.extract! account, :name, :person_id
  json.url account_url(account, format: :json)
end
