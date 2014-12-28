json.partial! template_for_resource, resource: @resource

json.cache! ['collection', @resource], expires_in: normal do
  json.partial! template_for_collections, collection: %w(users campuses faculties academic_unities courses teachers enrolled_students places comments events posts published_posts likes dislikes)
end
