json.array!(@resource_types) do |resource_type|
  json.extract! resource_type, :id, :type, :professional_level_id
  json.url resource_type_url(resource_type, format: :json)
end
