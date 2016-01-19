json.array!(@desired_tasks) do |desired_task|
  json.extract! desired_task, :id, :user_id, :task_id
  json.url desired_task_url(desired_task, format: :json)
end
