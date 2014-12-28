json.extract! resource, :id, :abbreviation, :short_name, :name, :address, :organization_id, :address, :email, :phone, :url, :like_count, :dislike_count, :facebook, :twitter, :information

json.localization do
  if resource.localization.present?
    json.cache! ['compact', resource.localization] do
      json.partial! template_for_resource(resource.localization, 'compact'), resource: resource.localization
    end
  else
    json.null!
  end
end

json.extract! resource, :created_at, :updated_at