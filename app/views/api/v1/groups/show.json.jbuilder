json.set! json_root do
  json.partial! template_for_resource, resource: @resource

  json.subscribers do
    json.cache_collection! @resource.subscribers, key: 'compact' do |subscriber|
      json.set! json_root(subscriber) do
        json.partial! template_for_resource(subscriber, 'compact'), resource: subscriber
      end
    end
  end

  json.cache! ['collection', @resource], expires_in: normal do
    json.partial! template_for_collections, collection: %w(comments events posts published_posts likes dislikes)
  end
end