json.cache_collection! @items, key: 'item' do |item|
  json.set! json_root(item) do
    json.partial! template_for_item(item), item: item
  end
end