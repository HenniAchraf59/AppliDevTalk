json.extract! event, :id, :title, :content, :schedule_at, :place, :user_id, :username, :created_at, :updated_at
json.url event_url(event, format: :json)
