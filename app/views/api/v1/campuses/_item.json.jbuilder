json.extract! item, :id, :abbreviation, :short_name, :name, :address, :organization_id, :address, :email, :phone, :url, :likes_count, :dislikes_count, :facebook, :twitter, :information

json.cache_if! should_cache?, ['compact', item.localization] do
  json.localization do
    if item.localization.present?
      json.partial! template_for_item(item.localization, 'compact'), item: item.localization
    else
      json.null!
    end
  end
end

json.extract! item, :created_at, :updated_at