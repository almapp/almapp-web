json.extract! item, :id, :abbreviation, :short_name, :name, :faculty_id, :address, :url, :email, :facebook, :twitter, :information

json.localization do
  if item.localization.present?
    json.cache! ['compact', item.localization], expires_in: very_long do
      json.partial! template_for_item(item.localization, 'compact'), item: item.localization
    end
  else
    json.null!
  end
end

json.extract! item, :created_at, :updated_at