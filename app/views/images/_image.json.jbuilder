json.extract! image, :id, :name, :utilisateur_id, :valider, :created_at, :updated_at
json.url image_url(image, format: :json)