json.array!(@task_shifts) do |task_shift|
  json.extract! task_shift, :id, :task_id, :shift_time_id, :min_num, :max_num
  json.url task_shift_url(task_shift, format: :json)
end
