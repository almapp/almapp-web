json.extract! resource, :id, :anonymous, :hidden, :like_count, :dislike_count
json.user do
  json.cache! ['compact', resource.user] do
    json.partial! template_for_resource(resource.user, 'compact'), resource: resource.user
  end
end
json.extract! resource, :comment, :created_at, :updated_at