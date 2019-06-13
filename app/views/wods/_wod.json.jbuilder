json.extract! wod, :id, :name, :score, :score_set, :rep, :description, :movements, :routine, :created_at, :updated_at
json.url wod_url(wod, format: :json)
