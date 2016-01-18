json.array!(@submissions) do |submission|
  json.extract! submission, :id, :name, :description
  json.url submission_url(submission, format: :json)
end
