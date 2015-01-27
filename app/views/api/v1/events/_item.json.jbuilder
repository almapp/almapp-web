json.extract! item, :id, :title, :private, :publish_date, :to_date, :facebook_url, :external_url, :like_count, :dislike_count, :information

json.set! 'participants_count', item.participants.size

json.cache! ['compact', item.localization] do
  json.localization do
    if item.localization.present?
      json.partial! template_for_item(item.localization, 'compact'), item: item.localization
    else
      json.null!
    end
  end
end
json.extract! item, :created_at, :updated_at