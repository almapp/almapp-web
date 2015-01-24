json.extract! item, :id, :title, :private, :publish_date, :to_date, :facebook_url, :external_url, :like_count, :dislike_count, :information

json.set! 'participants_count', item.participants.size

json.localization do
  if item.localization.present?
    json.cache! [item.localization, 'compact'] do
      json.partial! 'api/v1/places/compact', item: item.localization
    end
  else
    json.null!
  end
end

json.extract! item, :created_at, :updated_at