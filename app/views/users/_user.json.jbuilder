json.extract! user, :id, :userid, :password, :name, :affiliate_id, :phone, :picture, :gender, :age, :created_at, :updated_at
json.url user_url(user, format: :json)
