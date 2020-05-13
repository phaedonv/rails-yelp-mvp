json.extract! restaurant, :id, :name, :address, :category, :phone, :reviews, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
