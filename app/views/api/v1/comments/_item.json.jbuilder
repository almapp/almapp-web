json.extract! item, :id, :anonymous, :hidden, :like_count, :dislike_count
json.user do
  json.cache! ['compact', item.user] do
    json.partial! template_for_item(item.user, 'compact'), item: item.user
  end
end
json.extract! item, :comment, :created_at, :updated_at