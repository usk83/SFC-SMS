json.array!(@shift_dates) do |shift_date|
  json.extract! shift_date, :id, :date
  json.url shift_date_url(shift_date, format: :json)
end
