json.extract! todo, :id, :title, :body, :color, :pinned, :deleted, :published, :duedate, :done, :created_at, :updated_at
json.url todo_url(todo, format: :json)
