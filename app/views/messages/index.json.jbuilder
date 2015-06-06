json.array!(@messages) do |message|
  json.extract! message, :id, :id_emisor, :id_receptor, :mensaje, :date, :status
  json.url message_url(message, format: :json)
end
