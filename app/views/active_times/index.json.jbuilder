json.array!(@active_times) do |active_time|
  json.extract! active_time, :id, :user_id, :shift_time_id
  json.url active_time_url(active_time, format: :json)
end
