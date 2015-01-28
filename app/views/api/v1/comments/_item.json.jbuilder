json.extract! item, :id, :anonymous, :hidden, :like_count, :dislike_count

json.cache_if! should_cache?, ['compact', item.user] do
  json.user do
    json.partial! template_for_item(item.user, 'compact'), item: item.user
  end
end

json.extract! item, :comment, :created_at, :updated_at