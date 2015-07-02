json.array!(@professional_levels) do |professional_level|
  json.extract! professional_level, :id, :name
  json.url professional_level_url(professional_level, format: :json)
end
