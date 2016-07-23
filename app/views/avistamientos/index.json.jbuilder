json.array!(@avistamientos) do |avistamiento|
  json.extract! avistamiento, :id, :bike_id, :photo, :address, :latitude, :longitude, :user_id
  json.url avistamiento_url(avistamiento, format: :json)
end
