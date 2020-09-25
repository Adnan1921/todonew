json.extract! todo_list, :id, :task_title, :task_description, :task_time, :difficulty_level, :created_at, :updated_at
json.url todo_list_url(todo_list, format: :json)
