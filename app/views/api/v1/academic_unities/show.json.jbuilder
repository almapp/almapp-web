json.partial! template_for_resource, resource: @resource
json.extract! @resource, :like_count, :dislike_count

json.faculty do
  json.cache! ['compact', @resource.faculty], expires_in: very_long do
    json.partial! template_for_resource(@resource.faculty, 'compact'), resource: @resource.faculty
  end
end

json.cache! ['collection', @resource], expires_in: normal do
  json.partial! template_for_collections, collection: %w(courses places teachers comments events posts published_posts likes dislikes)
end