json.extract! @restaurant, :id, :name, :category
# json.foods @restaurant.foods, :id, :name, :price

json.foods @restaurant.foods do |json, food|
  json.(food, :id, :name, :price)
end


json.time Time.now
