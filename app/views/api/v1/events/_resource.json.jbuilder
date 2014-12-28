json.extract! resource, :id, :title, :private, :publish_date, :to_date, :facebook_url, :external_url, :like_count, :dislike_count, :information

json.set! 'participants_count', resource.participants.size

json.localization do
  if resource.localization.present?
    json.cache! [resource.localization, 'compact'] do
      json.partial! 'api/v1/places/compact', resource: resource.localization
    end
  else
    json.null!
  end
end

json.extract! resource, :created_at, :updated_at