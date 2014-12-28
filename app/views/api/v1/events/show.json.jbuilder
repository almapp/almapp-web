json.partial! template_for_resource, resource: @resource

json.participants do
  json.cache_collection! @resource.participants, key: 'compact' do |participant|
    json.partial! template_for_resource(participant, 'compact'), resource: participant
  end
end

json.host do
  polymorphic_type = polymorphic_type(@resource.host)
  json.set! 'host_type', polymorphic_type
  json.extract! @resource, :host_id
  json.set! polymorphic_type do
    json.cache! ['compact', @resource.host], expires_in: 30.minutes do
      json.partial! template_for_resource(@resource.host, 'compact'), resource: @resource.host
    end
  end
end

json.cache! ['collection', @resource], expires_in: normal do
  json.partial! template_for_collections, collection: %w(comments posts published_posts likes dislikes)
end
