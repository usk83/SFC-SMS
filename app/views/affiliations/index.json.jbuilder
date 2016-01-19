json.array!(@affiliations) do |affiliation|
  json.extract! affiliation, :id, :user_id, :committee_id
  json.url affiliation_url(affiliation, format: :json)
end
