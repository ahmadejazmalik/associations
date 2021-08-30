json.extract! user, :id, :name, :moblie, :email, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
