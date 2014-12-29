json.set! json_root do
  json.partial! template_for_resource, resource: @resource

  json.cache! ['collection', @resource], expires_in: normal do
    json.partial! template_for_collections, collection: %w(comments events posts published_posts likes dislikes)
  end
end