json.partial! template_for_resource, resource: @resource

json.academic_unity do
  json.cache! ['compact', @resource.academic_unity], expires_in: 1.hours do
    json.partial! template_for_resource(@resource.academic_unity, 'compact'), resource: @resource.academic_unity
  end
end

json.cache! ['collection', @resource], expires_in: normal do
  json.partial! template_for_collections, collection: %w(enrolled_students comments events posts published_posts likes dislikes)
end
