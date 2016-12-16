json.extract! event, :id, :name, :date, :location, :host, :action, :created_at, :updated_at
json.url event_url(event, format: :json)