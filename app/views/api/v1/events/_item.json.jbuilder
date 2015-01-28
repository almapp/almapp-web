json.extract! item, :id, :title, :private, :publish_date, :to_date, :facebook_url, :external_url, :likes_count, :dislikes_count, :information

json.set! 'participants_count', item.participants.size

json.cache_if! should_cache?, ['compact', item.localization] do
  json.localization do
    if item.localization.present?
      json.partial! template_for_item(item.localization, 'compact'), item: item.localization
    else
      json.null!
    end
  end
end

json.host do
  polymorphic_type = polymorphic_type(item.host)
  json.set! 'host_type', polymorphic_type
  json.extract! item, :host_id
  json.cache_if! should_cache?, ['compact', item.host], expires_in: 30.minutes do
    json.set! polymorphic_type do
      json.partial! template_for_item(item.host, 'compact'), item: item.host
    end
  end
end

json.extract! item, :created_at, :updated_at