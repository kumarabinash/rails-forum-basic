json.array!(@markers) do |marker|
  json.extract! marker, :id, :marker_type, :lat, :lng, :title, :description, :address, :expiry_date
  json.url marker_url(marker, format: :json)
end
