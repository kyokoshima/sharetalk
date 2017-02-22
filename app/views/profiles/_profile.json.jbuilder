json.extract! profile, :id, :image, :hobby, :birthday, :created_at, :updated_at
json.url profile_url(profile, format: :json)