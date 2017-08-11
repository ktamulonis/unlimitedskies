json.extract! artist, :id, :name, :email, :drone, :phone, :location, :distance, :created_at, :updated_at
json.url artist_url(artist, format: :json)
