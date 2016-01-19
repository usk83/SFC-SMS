json.array!(@user_stations) do |user_station|
  json.extract! user_station, :id, :user_id, :station_id
  json.url user_station_url(user_station, format: :json)
end
