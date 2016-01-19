json.array!(@experience_tasks) do |experience_task|
  json.extract! experience_task, :id, :user_id, :task_id
  json.url experience_task_url(experience_task, format: :json)
end
