json.extract! room, :id, :number, :isAvailable, :description, :price, :user_id, :image1, :image2, :image3, :created_at, :updated_at
json.url room_url(room, format: :json)
