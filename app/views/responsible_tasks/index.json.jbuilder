json.array!(@responsible_tasks) do |responsible_task|
  json.extract! responsible_task, :id, :user_id, :task_id
  json.url responsible_task_url(responsible_task, format: :json)
end
