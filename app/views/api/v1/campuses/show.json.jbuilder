json.set! json_root do
  json.partial! template_for_resource, resource: @resource

  json.organization do
    json.cache! ['compact', @resource.organization], expires_in: 1.hours do
      json.partial! template_for_resource(@resource.organization, 'compact'), resource: @resource.organization
    end
  end

  json.cache! ['collection', @resource], expires_in: normal do
    json.partial! template_for_collections, collection: %w(faculties academic_unities courses teachers places comments events posts published_posts likes dislikes)
  end
end