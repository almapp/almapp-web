json.set! json_root do
  json.partial! template_for_item, item: @item

  json.events do
    json.cache_collection! @item.events, key: 'compact', expires_in: short do |item|
      json.set! json_root(item) do
        json.partial! template_for_item(item, 'compact'), item: item
      end
    end
  end
=begin
  json.cache_if! should_cache?, ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(comments events posts likes dislikes)
  end
=end
end