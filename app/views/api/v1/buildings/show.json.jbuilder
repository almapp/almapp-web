json.set! json_root do
  json.partial! template_for_resource, resource: @resource

  json.campus do
    json.cache! ['compact', @resource.campus] do
      json.partial! template_for_resource(@resource.campus, 'compact'), resource: @resource.campus
    end
  end

  json.cache! ['collection', @resource], expires_in: normal do
    json.partial! template_for_collections, collection: %w(places comments events posts published_posts likes dislikes)
  end
end