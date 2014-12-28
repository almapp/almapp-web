json.partial! template_for_resource, resource: @resource

json.course do
  json.cache! ['compact', @resource.course] do
    json.partial! template_for_resource(@resource.course, 'compact'), resource: @resource.course
  end
end

json.cache! ['collection', @resource], expires_in: normal do
  json.partial! template_for_collections, collection: %w(schedule_items assistants section_students teachers comments events posts published_posts)
end
