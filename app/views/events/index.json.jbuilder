json.array!(@events) do |event|
  json.extract! event, :id, :name, :start_at, :end_at, :active
  json.url event_url(event, format: :json)
end
