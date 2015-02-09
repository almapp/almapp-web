json.extract! item, :id

json.user do
  json.cache_if! should_cache?, ['compact', item.user] do
    json.partial! template_for_item(item.user, 'compact'), item: item.user
  end
end

json.extract! item, :likes_count, :dislikes_count

# if controller.action_name == 'posts' || controller.action_name == 'index'
  json.entity do
    if item.entity.present?
      polymorphic_type = polymorphic_type(item.entity)
      json.set! 'entity_type', polymorphic_type
      json.extract! item, :entity_id
      json.set! polymorphic_type do
        json.cache_if! should_cache?, ['compact', item.entity] do
          json.partial! template_for_item(item.entity, 'compact'), item: item.entity
        end
      end
    else
      json.null!
    end
  end
# end

# if controller.action_name == 'published_posts'
  json.target do
    if item.target.present?
      polymorphic_type = polymorphic_type(item.target)
      json.set! 'target_type', polymorphic_type
      json.extract! item, :target_id
      json.set! polymorphic_type do
        json.cache_if! should_cache?, ['compact', item.target] do
          json.partial! template_for_item(item.target, 'compact'), item: item.target
        end
      end
    else
      json.null!
    end
  end
# end

json.cache_if! should_cache?, ['compact', item.localization] do
  json.localization do
    if item.localization.present?
      json.partial! template_for_item(item.localization, 'compact'), item: item.localization
    else
      json.null!
    end
  end
end

json.event do
  if item.event.present?
    json.cache_if! should_cache?, ['compact', item.event] do
      json.partial! template_for_item(item.event, 'compact'), item: item.event
    end
  else
    json.null!
  end
end

json.extract! item, :content, :notify, :hidden, :likes_count, :dislikes_count, :comments_count, :created_at, :updated_at
