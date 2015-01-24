json.extract! item, :id, :abbreviation, :short_name, :name, :campus_id, :address, :phone, :url, :email, :facebook, :twitter, :like_count, :dislike_count, :information

json.localization do
  if item.localization.present?
    json.cache! ['compact', item.localization] do
      json.partial! template_for_item(item.localization, 'compact'), item: item.localization
    end
  else
    json.null!
  end
end

json.extract! item, :created_at, :updated_at