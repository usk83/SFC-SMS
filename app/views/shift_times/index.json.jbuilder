json.array!(@shift_times) do |shift_time|
  json.extract! shift_time, :id, :shift_date, :shift_time
  json.url shift_time_url(shift_time, format: :json)
end
