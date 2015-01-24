json.cache_collection! @items, key: 'item', expires_in: very_long do |item|
  json.set! json_root(item) do
    json.partial! template_for_item, item: item
  end
end