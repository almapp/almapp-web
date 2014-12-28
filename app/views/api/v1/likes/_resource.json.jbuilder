json.extract! resource, :id, :valuation, :likeable_id, :likeable_type

json.user do
  json.cache! ['compact', resource.user], expires_in: 10.minutes do
    json.partial! template_for_resource(resource.user, 'compact'), resource: resource.user
  end
end

# json.extract! resource, :created_at, :updated_at