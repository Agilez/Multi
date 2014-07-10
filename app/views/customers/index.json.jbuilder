json.array!(@customers) do |customer|
  json.extract! customer, :id, :store_id, :name, :email, :encrypted_password
  json.url customer_url(customer, format: :json)
end
