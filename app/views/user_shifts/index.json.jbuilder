json.array!(@user_shifts) do |user_shift|
  json.extract! user_shift, :id, :user_id, :task_shift_id
  json.url user_shift_url(user_shift, format: :json)
end
