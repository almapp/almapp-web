json.cache_collection_if! should_cache?, @items, key: 'item' do |item|
  json.set! json_root(item) do
    json.partial! template_for_item(item), item: item
  end
end