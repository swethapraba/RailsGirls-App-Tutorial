json.extract! food, :id, :item, :category, :quantity, :description, :created_at, :updated_at
json.url food_url(food, format: :json)