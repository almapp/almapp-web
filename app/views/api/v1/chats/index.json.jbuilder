json.cache_collection_if! should_cache?, @items, key: 'item', expires_in: long do |item|
  json.set! json_root(item) do
    json.partial! template_for_item(item), item: item
  end
end