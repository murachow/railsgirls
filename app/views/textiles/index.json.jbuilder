json.array!(@textiles) do |textile|
  json.extract! textile, :id, :size, :material, :picture, :name
  json.url textile_url(textile, format: :json)
end
