json.extract! resource, :id

json.user do
  json.cache! ['compact', resource.user] do
    json.partial! template_for_resource(resource.user, 'compact'), resource: resource.user
  end
end

json.extract! resource, :like_count, :dislike_count

# if controller.action_name == 'posts' || controller.action_name == 'index'
  json.entity do
    if resource.entity.present?
      polymorphic_type = polymorphic_type(resource.entity)
      json.set! 'entity_type', polymorphic_type
      json.extract! resource, :entity_id
      json.set! polymorphic_type do
        json.cache! ['compact', resource.entity] do
          json.partial! template_for_resource(resource.entity, 'compact'), resource: resource.entity
        end
      end
    else
      json.null!
    end
  end
# end

# if controller.action_name == 'published_posts'
  json.target do
    if resource.target.present?
      polymorphic_type = polymorphic_type(resource.target)
      json.set! 'target_type', polymorphic_type
      json.extract! resource, :target_id
      json.set! polymorphic_type do
        json.cache! ['compact', resource.target] do
          json.partial! template_for_resource(resource.target, 'compact'), resource: resource.target
        end
      end
    else
      json.null!
    end
  end
# end

json.localization do
  if resource.localization.present?
    json.cache! ['compact', resource.localization] do
      json.partial! template_for_resource(resource.localization, 'compact'), resource: resource.localization
    end
  else
    json.null!
  end
end

json.event do
  if resource.event.present?
    json.cache! ['compact', resource.event] do
      json.partial! template_for_resource(resource.event, 'compact'), resource: resource.event
    end
  else
    json.null!
  end
end

json.extract! resource, :content, :notify, :hidden, :like_count, :dislike_count, :created_at, :updated_at
