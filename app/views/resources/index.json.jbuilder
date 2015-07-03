json.array!(@resources) do |resource|
  json.extract! resource, :id, :title, :link, :resource_type_id
  json.url resource_url(resource, format: :json)
end
