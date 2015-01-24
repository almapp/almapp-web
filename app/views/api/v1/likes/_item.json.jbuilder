json.extract! item, :id, :valuation, :likeable_id, :likeable_type

json.user do
  json.cache! ['compact', item.user], expires_in: 10.minutes do
    json.partial! template_for_item(item.user, 'compact'), item: item.user
  end
end

# json.extract! item, :created_at, :updated_at