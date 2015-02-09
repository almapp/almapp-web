json.extract! item, :id, :content, :flagged, :hidden

json.user do
  json.cache_if! should_cache?, ['compact', item.user] do
    json.partial! template_for_item(item.user, 'compact'), item: item.user
  end
end

json.extract! item, :created_at, :updated_at