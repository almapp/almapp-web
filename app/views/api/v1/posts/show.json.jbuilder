json.set! json_root do
  json.partial! template_for_item, item: @item
=begin
  json.cache_if! should_cache?, ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(comments likes dislikes)
  end
=end
end