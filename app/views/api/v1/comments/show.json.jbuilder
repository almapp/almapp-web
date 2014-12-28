json.partial! template_for_resource, resource: @resource

json.commentable do
  polymorphic_type = polymorphic_type(@resource.commentable)
  json.set! 'commentable_type', polymorphic_type
  json.extract! @resource, :commentable_id
  json.set! polymorphic_type do
    json.cache! ['compact', @resource.commentable], expires_in: 30.minutes do
      json.partial! template_for_resource(@resource.commentable, 'compact'), resource: @resource.commentable
    end
  end
end

json.cache! ['collection', @resource], expires_in: normal do
  json.partial! template_for_collections, collection: %w(likes dislikes)
end
