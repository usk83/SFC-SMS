json.array!(@allnights) do |allnight|
  json.extract! allnight, :id, :date
  json.url allnight_url(allnight, format: :json)
end
