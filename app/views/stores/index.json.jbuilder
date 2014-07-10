json.array!(@stores) do |store|
  json.extract! store, :id, :name, :slug, :views
  json.url store_url(store, format: :json)
end
