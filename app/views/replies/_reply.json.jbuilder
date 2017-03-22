json.extract! reply, :id, :comment, :created_at, :updated_at
json.url reply_url(reply, format: :json)
