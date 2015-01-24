json.cache_collection! @items, key: 'item', expires_in: 1.hour do |item|
  json.partial! template_for_item, item: item
end