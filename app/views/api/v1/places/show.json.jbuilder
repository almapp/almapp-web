json.set! json_root do
  json.partial! template_for_item, item: @item

  json.cache! ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(comments events posts likes dislikes)
  end
end