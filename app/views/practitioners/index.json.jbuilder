json.array!(@practitioners) do |practitioner|
  json.extract! practitioner, :id, :name
  json.url practitioner_url(practitioner, format: :json)
end
