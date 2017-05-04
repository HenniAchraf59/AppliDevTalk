json.extract! event, :id, :title, :content, :scheduled_at, :place, :created_at, :updated_at
json.url event_url(event, format: :json)
