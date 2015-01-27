json.extract! item, :id, :abbreviation, :short_name, :name, :faculty_id, :address, :url, :email, :facebook, :twitter, :information

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