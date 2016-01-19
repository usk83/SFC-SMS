json.array!(@active_nights) do |active_night|
  json.extract! active_night, :id, :user_id, :allnight_id
  json.url active_night_url(active_night, format: :json)
end
